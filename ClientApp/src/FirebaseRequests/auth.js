import firebase from 'firebase';
import axios from 'axios';

const registerUser = (user) => {
    return firebase.auth().createUserWithEmailAndPassword(user.email, user.password);
}

const addUser = (user) => {
    return new Promise((resolve, reject) => {
        axios
            .post(`/api/user/newuser`, user)
            .then((res) => {
                resolve(res.data);
            })
            .catch((err) => {
                reject(err);
            })
    })
}

const logoutUser = () => {
    return firebase.auth().signOut();
}

export default { registerUser, logoutUser, addUser }