import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import { Glyphicon, Nav, Navbar, NavItem } from 'react-bootstrap';
import { LinkContainer } from 'react-router-bootstrap';
import authRequests from '../FirebaseRequests/auth';
import './NavMenu.css';

export class NavMenu extends Component {
  displayName = NavMenu.name

  render() {
    const logoutClickEvent = () => {
      authRequests.logoutUser();
      this.props.logout();
    };

    return (
      <Navbar inverse fixedTop fluid collapseOnSelect>
        <Navbar.Header>
          <Navbar.Brand>
            <Link to={'/'}>Polyphony</Link>
          </Navbar.Brand>
          <Navbar.Toggle />
        </Navbar.Header>
        <Navbar.Collapse>
          <Nav>
            <LinkContainer to={'/'} exact>
              <NavItem>
                <Glyphicon glyph='home' /> Home
              </NavItem>
            </LinkContainer>
            <LinkContainer to={'/rooms'}>
              <NavItem>
                <Glyphicon glyph='cd' /> Rooms
              </NavItem>
            </LinkContainer>
            {
              this.props.authed ? (
                <LinkContainer to={'/login'}>
                  <Glyphicon glyph='road' />
                  <button class='btn btn-default' onClick={logoutClickEvent}>
                    Logout
                  </button>
                </LinkContainer>
              ) : (
                <LinkContainer to={'/registration'}>
                  <NavItem>
                    <Glyphicon glyph='edit' /> Registration
                  </NavItem>
                </LinkContainer>
              )
            }
          </Nav>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}
