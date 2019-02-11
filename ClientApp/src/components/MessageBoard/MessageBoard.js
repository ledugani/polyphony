import React, { Component } from 'react';
import './MessageBoard.css'
import * as signalR from '@aspnet/signalr';
import messageRequests from '../../DBRequests/messageRequests';

class MessageBoard extends Component {
  constructor(props) {
    super(props);

    this.state = {
      currentUser: {},
      messageHistory: [],
      message: '',
      messages: [],
      hubConnection: null,
    };
  }

  componentDidMount = () => {
    messageRequests
      .getMessagesByRoom(this.props.roomId)
      .then((messages) => {
        this.setState({messageHistory: messages});
      })
      .catch((err) => {
        console.error('There was an issue getting the messages for this room -> ', err);
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
          this.state.hubConnection.invoke("JoinRoom",this.props.roomName);
          console.log('Connection established!');
        })
        .catch(err => console.log('Error trying to establish a connection ->', err));

        this.state.hubConnection.on('Receive', (username, receivedMessage) => {
          const text = `${username}: ${receivedMessage}`;
          const messages = this.state.messages.concat([text]);
          this.setState({ ...this.state.messages, messages });
        });

        this.state.hubConnection.on('ReceiveNotification', (message) => {
          const text = `${message}`;
          const messages = this.state.messages.concat([text]);
          this.setState({ ...this.state.messages, messages });
        });
    });
  };

  // componentWillUnmount() {
  //   // user leaves the room
  //   this.state.hubConnection
  //     .invoke("LeaveRoom", this.props.roomName)
  //     .on('ReceiveNotification', (message) => {
  //       const text = `${message}`;
  //       const messages = this.state.messages.concat([text]);
  //       this.setState({ messages });
  //     })
  //     .catch((err) => {
  //       console.error('There was an error sending the user leave room message -> ', err);
  //     });
  // }

  sendMessage = () => {
    const messageToDb = {
      "roomid": this.props.roomId,
      "content": this.state.message,
      "username": this.state.currentUser.username
    }

    this.state.hubConnection
      .invoke('sendToRoom', this.props.roomName, this.state.message)
      .catch(err => console.error('There was a problem sending the message -> ', err));

    this.setState({message: ''});

    messageRequests
      .addNewMessage(messageToDb)
      .then(() => {
        console.log('Successfully sent message to the db!');
      })
      .catch(err => {
        console.error('There was a problem sending this message to the db -> ', err);
      });
  };

  render() {
    const history = this.state.messageHistory.map((msg, index) => {
      <span key={index}>
        <p>{msg.username}</p>
        <p>{msg.content}</p>
      </span>
    })
    return (
      <div>
        <div>
          {history}
        </div>

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