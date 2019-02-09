import axios from 'axios';

const getRequest = () => {
  return new Promise((resolve, reject) => {
    axios
      .get(`/api/user`)
      .then(results => {
        resolve(results.data)
      })
      .catch(error => {
        reject(error)
      })
  })
};

const getUserByEmail = (email) => {
  return new Promise((resolve, reject) => {
    axios
      .get(`/api/user/${email}`)
      .then(res => {
        resolve(res.data);
      })
      .catch(err => {
        reject(err);
    });
  });
};

export default { getRequest, getUserByEmail }