import React, {Component} from 'react';
import roomsRequest from '../../DBRequests/roomsRequest';
import MessageBoard from '../MessageBoard/MessageBoard';
import messageRequests from '../../DBRequests/messageRequests';
import { Glyphicon } from 'react-bootstrap';
import './SingleRoom.css';

export class SingleRoom extends Component {
  state = {
    room: {
      creator: '',
      roomDescription: '',
      roomId: '',
      roomName: '',
      tuneLink: '',
    },
    users: [],
    messages: [],
  }

  componentDidMount() {
    const roomId = this.props.match.params.id;
    roomsRequest.getRoomById(roomId)
      .then((res) => {
        this.setState({ room: res });
      })
      .catch((err) => {
        console.error('There was an error getting room by id -> ', err);
      });

    messageRequests.getMessagesByRoom(roomId)
      .then((res) => {
        this.setState({messages: res});
      })
      .catch(err => {
        console.error('There was a problem setting the room history to state -> ', err);
      });
  }

  activeUsersChange = (user) => {
    this.setState({users: user});
  }

  goBack = () => {
    this.props.history.push('/rooms');
  }

  render() {
    const room = this.state.room;
    const messageBoard = this.state.room.roomId > 0 &&
        (<MessageBoard
            roomName={this.state.room.roomName}
            roomId={this.state.room.roomId}
            messageHistory={this.state.messages}
            activeUsersChange={this.activeUsersChange}
        />);

    const currentUsers = this.state.users.map((user, index) => {
      return (<li key={index}>
        {user}
      </li>)
    });

    return (
      <div className="container">
        <button
          className="btn btn-default back-btn"
          onClick={this.goBack}
        >
          <Glyphicon glyph="chevron-left" />
          &nbsp;
          Back
        </button>
        <div>
          <h1>{room.roomName}</h1>
          <p>{room.roomDescription}</p>
        </div>
        <div className="top">
          <div className="tunes">
            <h2>Tunes</h2>
            <iframe src={this.state.room.tuneLink} frameBorder="0" allowtransparency="true" allow="encrypted-media" title={this.state.room.roomName}></iframe>
          </div>
          <div className="activeusers">
            <h2>Active Users</h2>
            <ul id="active">
              {currentUsers}
            </ul>
          </div>
        </div>
        <div className="bottom">
          <h2>Message Board</h2>
          <div>
            {messageBoard}
          </div>
        </div>
      </div>
    );
  }
}