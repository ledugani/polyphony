import React, { Component } from 'react';
import * as signalR from '@aspnet/signalr';

class MessageBoard extends Component {
  constructor(props) {
    super(props);

    this.state = {
      username: '',
      message: '',
      messages: [],
      hubConnection: null,
    };
  }

  componentDidMount = () => {
    const username = this.state.username;

    const hubConnection = new signalR.HubConnectionBuilder()
    .withUrl("/chatHub")
    .configureLogging(signalR.LogLevel.Information)
    .build();

    this.setState({ hubConnection, username }, () => {
      this.state.hubConnection.start()
        .then(() => {
          console.log('Connection established!');
        })
        .catch(err => console.log('Error trying to establish a connection ->', err));

      this.state.hubConnection.on('sendToAll', (username, receivedMessage) => {
        console.log('username: ', username);
        const text = `${username}: ${receivedMessage}`;
        const messages = this.state.messages.concat([text]);
        this.setState({ messages });
      });
    });
  };

  sendMessage = () => {
    this.state.hubConnection
      .invoke('sendToAll', this.state.username, this.state.message)
      .catch(err => console.error(err));

      this.setState({message: ''});
  };

  render() {
    return (
      <div>
        <br />
        <input
          type="text"
          value={this.state.message}
          onChange={e => this.setState({ message: e.target.value })}
        />

        <button onClick={this.sendMessage}>Send</button>

        <div>
          {this.state.messages.map((message, index) => (
            <span style={{display: 'block'}} key={index}> {message} </span>
          ))}
        </div>
      </div>
    );
  }
}

export default MessageBoard;