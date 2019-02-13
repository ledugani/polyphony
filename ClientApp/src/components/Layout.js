import React, { Component } from 'react';
import { Grid, Row } from 'react-bootstrap';
import { NavMenu } from './NavMenu';

export class Layout extends Component {
  displayName = Layout.name

  render() {
    return (
      <Grid fluid>
        <Row>
          <NavMenu
            logout = {this.props.runaway}
            authed = {this.props.authed}
          />
          {this.props.children}
        </Row>
      </Grid>
    );
  }
}
