import React, { Component } from 'react';
import roomsRequest from '../DBRequests/roomsRequest';

export class Home extends Component {
    state = {
        rooms: [],
    }

    render() {
        return (
            <div>
                <h1>Project Polyphony</h1>
            </div>
        );
    }
}
