import React, { Component } from 'react';
import { Route } from 'react-router';
import { Layout } from './components/Layout';
import { Home } from './components/Home';
import { FetchData } from './components/FetchData';
import { Registration } from './components/Registration';
import fbconnection from '../src/FirebaseRequests/connection';
import { Rooms } from './components/Rooms';

fbconnection();

export default class App extends Component {
  displayName = App.name

  render() {
    return (
      <Layout>
        <Route exact path='/' component={Home} />
        <Route path='/rooms' component={Rooms} />
        <Route path='/fetchdata' component={FetchData} />
        <Route path='/registration' component={Registration} />
      </Layout>
    );
  }
}
