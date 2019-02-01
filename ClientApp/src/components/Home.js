import React, { Component } from 'react';
import roomsRequest from '../DBRequests/roomsRequest';

export class Home extends Component {
    state = {
        rooms: [],
    }

    componentDidMount() {
        roomsRequest
            .getRequest()
            .then((rooms) => {
                this.setState({ rooms })
            })
            .catch(err => {
                console.error('There was an error getting all the rooms -> ', err);
            })
    }

    render() {
        const allRooms = this.state.rooms.map((room) => {
            return (
                <li key={room.id}>
                    {room.roomid}
                </li>
            );
        })
    return (
      <div>
        <h1>Hello, world!</h1>
        <ul>
            {allRooms}
        </ul>
      </div>
    );
  }
}
