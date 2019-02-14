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
                    <h1>Listen together.</h1>
                    <p>Polyphony connects you, your friends and others in a new music listening experience.</p>
                    <p><a className="btn btn-primary btn-lg" href="/registration" role="button">Sign up</a></p>
                    <p className="smaller-text">or <a href="/login">login</a></p>
                </div>
                {/* <hr/>
                <div className="container">
                    <div className="row">
                        <div className="col-sm">
                        Create a room for your new single, EP, or full-length album.
                        </div>
                        <div className="col-sm">
                        Chat with your friends about the music in real time.
                        </div>
                        <div className="col-sm">
                        Embed your favorite music from Spotify, Soundcloud, or Bandcamp.
                        </div>
                    </div>
                </div> */}
                <div className="footer">
                    <p>Terms of Use &nbsp; Privacy Policy &nbsp; &copy; <a href="https://personal-site-128be.firebaseapp.com/">Tom Dugan Enterprises</a></p>
                </div>
            </div>
        );
    }
}
