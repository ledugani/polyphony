import React, {Component} from 'react';
import roomsRequest from '../DBRequests/roomsRequest';
import MessageBoard from './MessageBoard';

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
          console.error(err);
        });
  }

  render() {
    const room = this.state.room;
    return (
      <div>
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
          <MessageBoard roomId={room.roomId} />
        </div>
      </div>
    );
  }
}