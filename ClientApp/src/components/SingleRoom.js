import React, {Component} from 'react';
import roomsRequest from '../DBRequests/roomsRequest';
import MessageBoard from './MessageBoard/MessageBoard';
import messageRequests from '../DBRequests/messageRequests';
import { Glyphicon } from 'react-bootstrap';

// import firebase from 'firebase';

export class SingleRoom extends Component {
  state = {
    room: {
      artistId: '',
      currentTime: '',
      endTime: '',
      roomDescription: '',
      roomId: '',
      roomName: '',
      startTime: '',
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
        />);

    return (
      <div>
        <button
          className="btn btn-default"
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
        <div>
          <div>
            <h2>SoundCloud</h2>
          </div>
          <div>
            <h2>Active Users</h2>
          </div>
        </div>
        <div>
          <h2>Message Board</h2>
          {messageBoard}
        </div>
      </div>
    );
  }
}