﻿import firebase from 'firebase';

const registerUser = (user) => {
    return firebase.auth().createUserWithEmailAndPassword(user.email, user.password);
}

const logoutUser = () => {
    return firebase.auth().signOut();
}

export default { registerUser, logoutUser }