import React, {Component} from 'react';

export class SingleRoom extends Component {
  state = {
    room: this.props.room,
    users: [],
    messages: [],
  }

  componentWillReceiveProps() {
    this.setState({ room: this.props.room })
  }

  render() {
    return (
      <div>
        <h1></h1>
      </div>
    );
  }
}