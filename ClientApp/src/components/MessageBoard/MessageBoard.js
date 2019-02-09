import React, { Component } from 'react';
import './MessageBoard.css'
import * as signalR from '@aspnet/signalr';
import messageRequests from '../../DBRequests/messageRequests';

class MessageBoard extends Component {
  constructor(props) {
    super(props);

    this.state = {
      currentUser: {},
      message: '',
      messages: [],
      hubConnection: null,
    };
  }

  componentDidMount = () => {
    console.log(this.props);

    messageRequests
      .getMessagesByRoom(this.props.roomId)
      .then((messages) => {
        const allMessages = messages.concat(this.state.messages);
        this.setState({ messages: allMessages });
      })
      .catch((err) => {
        console.error('There was an issue getting the messages from this room -> ', err);
      });

    const hubConnection = new signalR.HubConnectionBuilder()
    .withUrl("/chatHub", { accessTokenFactory: () => sessionStorage.getItem('token') })
    .configureLogging(signalR.LogLevel.Information)
    .build();

    const currentUser = JSON.parse(sessionStorage.getItem('currentUser'));
    this.setState({ currentUser });

    this.setState({ hubConnection }, () => {
      this.state.hubConnection.start()
        .then(() => {
          console.log(this.props);
          this.state.hubConnection.invoke("JoinRoom",this.props.roomName);
          console.log('Connection established!');
        })
        .catch(err => console.log('Error trying to establish a connection ->', err));

        this.state.hubConnection.on('Receive', (username, receivedMessage) => {
          const text = `${username}: ${receivedMessage}`;
          const messages = this.state.messages.concat([text]);
          this.setState({ messages });
        });

        this.state.hubConnection.on('ReceiveNotification', (message) => {
          const text = `${message}`;
          const messages = this.state.messages.concat([text]);
          this.setState({ messages });
        });
    });
  };

  sendMessage = () => {
    this.state.hubConnection
      .invoke('sendToRoom', this.props.roomName, this.state.message)
      .catch(err => console.error(err));

    this.setState({message: ''});
  };

  render() {
    return (
      <div>
        <br />
        <div className="banana">
          {this.state.messages.map((message, index) => (
            <span style={{display: 'block'}} key={index}> {message} </span>
          ))}
        </div>

        <input
          type="text"
          value={this.state.message}
          onChange={e => this.setState({ message: e.target.value })}
        />

        <button onClick={this.sendMessage}>Send</button>
      </div>
    );
  }
}

export default MessageBoard;