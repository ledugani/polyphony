import React, { Component } from 'react';
import {Route, BrowserRouter, Redirect, Switch}  from 'react-router-dom';
import { Layout } from './components/Layout';
import { Home } from './components/Home/Home';
import { Rooms } from './components/Rooms/Rooms';
import { Registration } from './components/Registration/Registration';
import { Login } from './components/Login/Login';
import firebase from 'firebase';

import fbConnection from './FirebaseRequests/connection';
import { SingleRoom } from './components/SingleRoom/SingleRoom';
import NewRoom from './components/NewRoom/NewRoom';

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
            {this.state.authed ?
              <PrivateRoute path='/rooms' authed={this.state.authed} component={Rooms} /> :
              <PublicRoute path='/registration' authed={this.state.authed} component={Registration} />
            }
            <PrivateRoute path='/newroom' authed={this.state.authed} component={NewRoom}/>
            <PrivateRoute path='/singleRoom/:id' authed={this.state.authed} component={SingleRoom}/>
            <PublicRoute path='/login' authed={this.state.authed} component={Login} />
          </Switch>
        </Layout>
      </BrowserRouter>
    );
  }
}
