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
                <div key={room.id} class="panel panel-default">
                    <div class="panel-body">
                        {room.artistId}
                        &nbsp;
                        |
                        &nbsp;
                        {room.roomName}
                        &nbsp;
                        |
                        &nbsp;
                        {room.startTime}
                        <br />
                        {room.roomDescription}
                    </div>
                </div>
            );
        })
    return (
      <div>
        <h1>All Rooms</h1>
        <ul>
            {allRooms}
        </ul>
      </div>
    );
  }
}
