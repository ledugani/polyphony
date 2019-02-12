import React from 'react';
import roomsRequest from '../DBRequests/roomsRequest';

class NewRoom extends React.Component {
  state = {
    newRoom: {
      name: '',
      description: '',
      creator: '',
      start_time: '',
      end_time: '',
      soundcloud: ''
    }
  }

  dateChange = (e) => {
    const temporRoom = {
      ...this.state.newRoom,
      start_time: e.target.value,
    }
    this.setState({newRoom: temporRoom})
  }

  formFieldStringState = (name, e) => {
    const tempRoom = {...this.state.newRoom};
    tempRoom[name] = e.target.value;
    this.setState({newRoom: tempRoom});
  };

  titleChange = (e) => {
    this.formFieldStringState('name', e);
  }

  descriptionChange = (e) => {
    this.formFieldStringState('description', e);
  };

  linkChange = (e) => {
    this.formFieldStringState('soundcloud', e);
  };

  formSubmitEvent = (e) => {
    const newRoom = this.state.newRoom;
    e.preventDefault();
    roomsRequest.postRequest(newRoom)
      .then(() => {
        // confirmation notification
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
        <div className="col-xs-8 panel panel-info col-xs-offset-2">
          <form className="panel-body" onSubmit={this.formSubmitEvent}>
            <div className="form-group">
              <label htmlFor="roomName">Room Name:</label>
              <input
                type="text"
                className="form-control"
                id="roomName"
                placeholder="Skeevy Salamander"
                value={newRoom.name}
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
                value={newRoom.description}
                onChange={this.descriptionChange}
              />
            </div>
            <div className="form-group form-inline">
              <label htmlFor="datetime">Start Date: </label>
              <input
                type="date"
                id="datetime"
                placeholder="MM/DD/YYYY"
                onChange={ (e) => this.dateChange(e) }
              />
            </div>
            <div className="form-group">
              <label htmlFor="soundcloudLink">SoundCloud Embed URL:</label>
              <input
                type="text"
                className="form-control"
                id="soundcloudLink"
                placeholder='<iframe width="100%" height="300" scrolling="no" frameborder="no" allow="autoplay" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/366801677&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true&visual=true"></iframe>'
                value={newRoom.soundcloud}
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