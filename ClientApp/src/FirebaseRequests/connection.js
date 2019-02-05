import firebase from 'firebase';
import constants from '../constants';

const fbConnection = () => {
    firebase.initializeApp(constants.firebaseConfig);
}

export default fbConnection;