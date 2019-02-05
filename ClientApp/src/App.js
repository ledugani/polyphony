import React, { Component } from 'react';
import {Route, BrowserRouter, Redirect, Switch}  from 'react-router-dom';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { FetchData } from './components/FetchData';
import { Rooms } from './components/Rooms';
import { Registration } from './components/Registration';
import { Login } from './components/Login';
import firebase from 'firebase';

import fbConnection from './FirebaseRequests/connection';

fbConnection();

const PrivateRoute = ({ component: Component, authed, ...rest}) => {
  return (
    <Route
      {...rest}
      render={props =>
        authed === true ? (
          <Component {...props} />
        ) : (
          <Redirect
            to={{ pathname: '/login', state: {from: props.location}}}
          />
        )
      }
    />
  );
};

const PublicRoute = ({ component: Component, authed, ...rest}) => {
  return (
    <Route
      {...rest}
      render={props =>
        authed === false ? (
          <Component {...props} />
        ) : (
          <Redirect
            to={{ pathname: '/', state: {from: props.location}}}
          />
        )
      }
    />
  );
};

export default class App extends Component {

  state =
  {
    authed: false,
  }

  componentDidMount () {
    this.removeListener = firebase.auth().onAuthStateChanged((user) => {
      if (user) {
        this.setState({authed: true});
      } else {
        this.setState({authed: false});
      }
    });
  }

  componentWillUnmount () {
    this.removeListener();
  }

  runAway = () => {
    this.setState({authed: false});
  }

  displayName = App.name
  render() {
    return (
      <BrowserRouter>
        <Layout authed={this.state.authed} runAway={this.runAway}>
          <Switch>
            <Route exact path='/' component={Home} />
            <PrivateRoute path='/rooms' authed={this.state.authed} component={Rooms} />
            <PrivateRoute path='/cart' authed={this.state.authed} component={FetchData} />
            <PublicRoute path='/registration' authed={this.state.authed} component={Registration} />
            <PublicRoute path='/login' authed={this.state.authed} component={Login} />
          </Switch>
        </Layout>
      </BrowserRouter>
    );
  }
}
