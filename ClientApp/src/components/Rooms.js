import React, { Component } from 'react';
import roomsRequest from '../DBRequests/roomsRequest';

export class Rooms extends Component {
    state = {
      rooms: [],
    }

    pushToRoom = (id) => {
      this.props.history.push(`/singleRoom/${id}`);
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
                <div key={room.roomId} className="panel panel-default">
                    <div className="panel-body">
                        {room.artistId}
                        &nbsp;
                        |
                        &nbsp;
                        {room.roomName}
                        &nbsp;
                        |
                        &nbsp;
                        {room.startTime}
                        <button
                          className="btn btn-default"
                          onClick={() => {this.pushToRoom(room.roomId)}}
                          >
                            View
                        </button>
                        <br />
                        {room.roomDescription}
                    </div>
                    <div>

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
