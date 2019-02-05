import React, {Component} from 'react';
import roomsRequest from '../DBRequests/roomsRequest';

export class SingleRoom extends Component {
  state = {
    room: [],
    users: [],
    messages: [],
  }

  componentDidMount() {
    const roomId = this.props.match.params.id;
    roomsRequest.getRoomById(roomId)
        .then((res) => {
          this.setState({ room: [res] });
        })
        .catch((err) => {
          console.error(err);
        });
  }

  render() {
    return (
      <div>
        <h1>Single Room</h1>
      </div>
    );
  }
}