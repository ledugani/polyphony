import React from 'react';
import ReactDOM from 'react-dom';

import Message from './Message.js';

class MessageBoard extends React.Component {
    constructor(props) {
        super(props);

        this.state = {
          messages: [],
        };

        this.submitMessage = this.submitMessage.bind(this);
    }

    submitMessage(e) {
      e.preventDefault();

      this.setState({
        messages: this.state.messages.concat([{
            username: "ledugani",
            content: <p>{ReactDOM.findDOMNode(this.refs.msg).value}</p>,
        }])
      }, () => {
        ReactDOM.findDOMNode(this.refs.msg).value = "";
      });
    }

    render() {
      const { messages } = this.state;

      return (
          <div className="chatroom">
              <ul className="messages" ref="messages">
                  {
                    messages.map((chat) =>
                        <Message chat={chat} user={messages.username} />
                    )
                  }
              </ul>
              <form className="input" onSubmit={(e) => this.submitMessage(e)}>
                  <input type="text" ref="msg" />
                  <input type="submit" value="Submit" />
              </form>
          </div>
      );
    }
}

export default MessageBoard;