import React from 'react';

const Message = ({chat, user}) => (
    <li>
        { user !== chat.username && <p> {chat.username} </p> }
        { chat.content }
    </li>
);

export default Message;