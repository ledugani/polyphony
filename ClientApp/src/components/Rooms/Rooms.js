import React, { Component } from 'react';
import roomsRequest from '../../DBRequests/roomsRequest';
import { Link } from 'react-router-dom';
import './Rooms.css';

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
              <strong>{room.roomName}</strong>
              &nbsp;
              |
              &nbsp;
              Creator: <em>{room.creator}</em>
              <button
                className="btn btn-default view"
                onClick={() => {this.pushToRoom(room.roomId)}}
                >
                  View
              </button>
              <br />
              {room.roomDescription}
            </div>
          </div>
        );
      })
    return (
      <div className="container">
        <h1>All Rooms</h1>
        <button
          className="btn btn-default new-btn"
        >
          <Link to="/newroom">New Room</Link>
        </button>
        <ul className="list">
          {allRooms}
        </ul>
      </div>
    );
  }
}
