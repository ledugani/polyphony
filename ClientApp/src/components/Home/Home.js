import React, { Component } from 'react';
import './Home.css';
import logo from "../Logo/polyphony_logo(black).png";

export class Home extends Component {
    state = {
        rooms: [],
    }

    render() {
        return (
            <div>
                <div className="jumbotron">
                    <img src={logo} alt="polyphony" width="200px"/>
                    <h1>Play music together.</h1>
                    <p>Polyphony connects you, your friends and others in a new music listening experience.</p>
                    <p><a className="btn btn-primary btn-lg" href="/registration" role="button">Sign up</a></p>
                    <p className="smaller-text">or <a href="/login">login</a></p>
                </div>
                <div className="footer">
                    <p>Terms of Use &nbsp; Privacy Policy &nbsp; &copy; Tom Dugan Enterprises</p>
                </div>
            </div>
        );
    }
}
