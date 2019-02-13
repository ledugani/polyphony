import React, { Component } from 'react';
import './Home.css';

export class Home extends Component {
    state = {
        rooms: [],
    }

    render() {
        return (
            <div className="jumbotron">
                <h1>Project Polyphony</h1>
                <p>Welcome to Polyphony, your online hub for new music listening.</p>
                <p><a className="btn btn-primary btn-lg" href="/" role="button">Learn more</a></p>
            </div>
        );
    }
}
