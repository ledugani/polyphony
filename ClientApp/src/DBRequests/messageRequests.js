import axios from 'axios';

const getMessagesByRoom = (roomId) => {
  return new Promise((resolve, reject) => {
    axios
      .get(`/api/message/${roomId}`)
      .then(res => {
        resolve(res.data);
      })
      .catch(err => {
        reject(err);
    });
  });
};

export default { getMessagesByRoom }