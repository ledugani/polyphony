import firebase from 'firebase';
import axios from 'axios';

axios.interceptors.request.use((config) => {
    const token = sessionStorage.getItem('token');

    if (token != null) {
      config.headers.Authorization = `Bearer ${token}`;
    }

    return config;
  }, function (err) {
    return Promise.reject(err);
});

const registerUser = (user) => {
    return firebase.auth().createUserWithEmailAndPassword(user.email, user.password);
}

const loginUser = (user) => {
    return firebase.auth().signInWithEmailAndPassword(user.email, user.password)
        .then((credentials) => {
            credentials.user.getIdToken();
        })
        .then((token) => {
            sessionStorage.setItem('token', token)
        });
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

export default { registerUser, logoutUser, addUser, loginUser }