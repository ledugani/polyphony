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
      authRequests.logoutUser()
      .then(() => {
        this.props.logout();
      })
      .catch((err) => {
        console.error("There was a problem logging you out -> ", err);
      });
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
            { this.props.authed ?
            <LinkContainer to={'/rooms'}>
              <NavItem>
                <Glyphicon glyph='cd' /> Rooms
              </NavItem>
            </LinkContainer> :
            null
            }
            { this.props.authed ? (
            <LinkContainer to={'/registration'}>
              <NavItem>
              <button
                onClick={logoutClickEvent}
                className='btn btn-default'
                >
                <Glyphicon glyph='road' /> Logout
              </button>
              </NavItem>
            </LinkContainer>
            ) : (
            <LinkContainer to={'/login'}>
              <NavItem>
                <Glyphicon glyph='th-list' /> Login
              </NavItem>
            </LinkContainer>
            ) }
          </Nav>
        </Navbar.Collapse>
      </Navbar>
    );
  }
}
