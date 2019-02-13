import React from 'react';
import roomsRequest from '../../DBRequests/roomsRequest';
import { Glyphicon } from 'react-bootstrap';
import './NewRoom.css';

class NewRoom extends React.Component {
  state = {
    newRoom: {
      roomName: '',
      roomDescription: '',
      creator: '',
      tuneLink: ''
    }
  }

  // dateChange = (e) => {
  //   const temporRoom = {
  //     ...this.state.newRoom,
  //     start_time: e.target.value,
  //   }
  //   this.setState({newRoom: temporRoom})
  // }

  goBack = () => {
    this.props.history.push('/rooms');
  }

  formFieldStringState = (name, e) => {
    const tempRoom = {...this.state.newRoom};
    tempRoom[name] = e.target.value;
    this.setState({newRoom: tempRoom});
  };

  titleChange = (e) => {
    this.formFieldStringState('roomName', e);
  }

  descriptionChange = (e) => {
    this.formFieldStringState('roomDescription', e);
  };

  linkChange = (e) => {
    this.formFieldStringState('tuneLink', e);
  };

  formSubmitEvent = (e) => {
    const newRoom = this.state.newRoom;
    e.preventDefault();
    roomsRequest.addNewRoom(newRoom)
      .then(() => {
        // confirmation notification
        console.log('Success creating room!');
      })
      .catch((err) => {
        console.error('There was a problem with creating the room -> ', err);
      })
  };

  componentDidMount() {
    const currentUser = JSON.parse(sessionStorage.getItem('currentUser')).username;

    this.setState({newRoom: {
      ...this.state.newRoom,
        creator: currentUser
      }
    })
  }

  render () {
    const {newRoom} = this.state;

    return (
      <div className="NewRoom">
        <h1>New Room</h1>
        <button
          className="btn btn-default"
          onClick={this.goBack}
        >
          <Glyphicon glyph="chevron-left" />
          &nbsp;
          Back
        </button>
        <div className="col-xs-8 panel panel-info col-xs-offset-2">
          <form className="panel-body" onSubmit={this.formSubmitEvent}>
            <div className="form-group">
              <label htmlFor="roomName">Room Name:</label>
              <input
                type="text"
                className="form-control"
                id="roomName"
                placeholder="Skeevy Salamander"
                value={newRoom.roomName}
                onChange={this.titleChange}
              />
            </div>
            {/* <div className="form-group">
              <label htmlFor="developer">Development Team: </label>
              <br/>
              <select id="developer" onChange={ (e) => this.devChange(e) }>
                <option value="Bethesda Room Studios">Bethesda Room Studios</option>
              </select>
            </div> */}
            <div>
              <label htmlFor="description">Description: </label>
              <textarea
                className="form-control"
                id="description"
                rows="3"
                value={newRoom.roomDescription}
                onChange={this.descriptionChange}
              />
            </div>
            {/* <div className="form-group form-inline">
              <label htmlFor="datetime">Start Date: </label>
              <input
                type="date"
                id="datetime"
                placeholder="MM/DD/YYYY"
                onChange={ (e) => this.dateChange(e) }
              />
            </div> */}
            <div className="form-group">
              <label htmlFor="soundcloudLink">Tune URL:</label>
              <input
                type="text"
                className="form-control"
                id="soundcloudLink"
                placeholder='Grab the url of the album or song from SoundCloud, Spotify, or BandCamp...'
                value={newRoom.tuneLink}
                onChange={this.linkChange}
              />
            </div>
            <button
              type="submit"
              className="btn btn-primary"
            >
              Create Room
            </button>
          </form>
        </div>
      </div>
    );
  }
};

export default NewRoom;