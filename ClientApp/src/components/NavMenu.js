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

    return (
      <Navbar fixedTop fluid className="navbar-nav">
        <Navbar.Header>
          <Navbar.Brand>
            <img src={logo} />
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
              <NavItem onClick={logoutClickEvent}>
                  <Glyphicon glyph='road' /> Logout
              </NavItem>
            </LinkContainer>
            ) : (
            <LinkContainer to={'/login'} className="stick-right">
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
