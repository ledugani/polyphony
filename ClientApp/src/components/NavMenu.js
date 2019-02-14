import React, { Component } from 'react';
import { Glyphicon, Nav, Navbar, NavItem } from 'react-bootstrap';
import { LinkContainer } from 'react-router-bootstrap';
import authRequests from '../FirebaseRequests/auth';
import logo from '../components/Logo/polyphony_logo(black).png'
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
    if (this.props.authed) {
      return (
        <Navbar fixedTop fluid className="navbar-nav">
          <Navbar.Header>
            <Navbar.Brand>
              <img src={logo} alt="polyphony logo"/>
            </Navbar.Brand>
            <Navbar.Toggle />
          </Navbar.Header>
          <Navbar.Collapse>
            <Nav>
              <LinkContainer to={'/rooms'}>
                <NavItem>
                  <Glyphicon glyph='cd' /> Rooms
                </NavItem>
              </LinkContainer>
              <LinkContainer to={'/registration'}>
                <NavItem onClick={logoutClickEvent}>
                    <Glyphicon glyph='road' /> Logout
                </NavItem>
              </LinkContainer>
            </Nav>
          </Navbar.Collapse>
        </Navbar>
      );
    } else {
      return null;
    }
  }
}
