import React, { Component } from 'react';
import authRequests from '../FirebaseRequests/auth';
import { Link } from 'react-router-dom';
import firebase from 'firebase';

export class Registration extends Component {
    state = {
        user: {
            firstName: '',
            lastName: '',
            username: '',
            email: '',
            password: ''
        },
    };

    registerClickEvent = (e) => {
        const { user } = this.state;
        e.preventDefault();
        authRequests
            .registerUser(user)
            .then(() => {
                this.props.history.push('/');
                firebase.auth().onAuthStateChanged((fbUser) => {
                    if (fbUser) {
                        const newUser = {
                            first_Name: user.firstName,
                            last_Name: user.lastName,
                            Username: user.username,
                            Email: user.email,
                            IsActive: 1,
                            FirebaseId: fbUser.uid
                        }
                        authRequests.addUser(newUser);
                    }
                  });

            })
            .catch((error) => {
                console.error('There was an error with registration ->', error);
            })
    }

    usernameChange = (e) => {
        const tempUser = { ...this.state.user };
        tempUser.username = e.target.value;
        this.setState({ user: tempUser });
    }

    firstNameChange = (e) => {
        const tempUser = { ...this.state.user };
        tempUser.firstName = e.target.value;
        this.setState({ user: tempUser });
    }

    lastNameChange = (e) => {
        const tempUser = { ...this.state.user };
        tempUser.lastName = e.target.value;
        this.setState({ user: tempUser });
    }

    emailChange = (e) => {
        const tempUser = { ...this.state.user };
        tempUser.email = e.target.value;
        this.setState({ user: tempUser });
    }

    passwordChange = (e) => {
        const tempUser = { ...this.state.user };
        tempUser.password = e.target.value;
        this.setState({ user: tempUser });
    }

    render() {
        const { user } = this.state;
        return (
            <div className="Register">
                <div id="login-form">
                    <h1 className="text-center">Register</h1>
                    <form className="form-horizontal col-sm-6 col-sm-offset-3">
                        <div className="form-group">
                            <label htmlFor="inputEmail" className="col-sm-4 control-label">
                                First Name:
                            </label>
                            <div className="col-sm-8">
                                <input
                                    type="text"
                                    className="form-control"
                                    id="inputFirstName"
                                    placeholder="First Name"
                                    value={user.firstname}
                                    onChange={this.firstNameChange}
                                />
                            </div>
                        </div>
                        <div className="form-group">
                            <label htmlFor="inputEmail" className="col-sm-4 control-label">
                                Last Name:
                            </label>
                            <div className="col-sm-8">
                                <input
                                    type="text"
                                    className="form-control"
                                    id="inputLastName"
                                    placeholder="Last Name"
                                    value={user.lastname}
                                    onChange={this.lastNameChange}
                                />
                            </div>
                        </div>
                        <div className="form-group">
                            <label htmlFor="inputEmail" className="col-sm-4 control-label">
                                Email:
                            </label>
                            <div className="col-sm-8">
                                <input
                                    type="email"
                                    className="form-control"
                                    id="inputEmail"
                                    placeholder="Email"
                                    value={user.email}
                                    onChange={this.emailChange}
                                />
                            </div>
                        </div>
                        <div className="form-group">
                            <label htmlFor="username" className="col-sm-4 control-label">
                                Username:
                            </label>
                            <div className="col-sm-8">
                                <input
                                    type="text"
                                    className="form-control"
                                    id="username"
                                    placeholder="limpBizkit"
                                    value={user.username}
                                    onChange={this.usernameChange}
                                />
                            </div>
                        </div>
                        <div className="form-group">
                            <label htmlFor="inputPassword" className="col-sm-4 control-label">
                                Password:
                            </label>
                            <div className="col-sm-8">
                                <input
                                    type="password"
                                    className="form-control"
                                    id="inputPassword"
                                    placeholder="Password"
                                    value={user.password}
                                    onChange={this.passwordChange}
                                />
                            </div>
                        </div>
                        <div className="form-group">
                            <div className="col-sm-12 text-center">
                                <Link to="/login">Need to Login?</Link>
                            </div>
                        </div>
                        <div className="form-group">
                            <div className="col-sm-12">
                                <button
                                    type="submit"
                                    className="btn btn-default col-xs-12"
                                    onClick={this.registerClickEvent}
                                >
                                    Register
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        )
    }
}