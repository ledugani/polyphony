import axios from 'axios';

const getRequest = () => {
    return new Promise((resolve, reject) => {
        axios
            .get(`/api/room`)
            .then(results => {
                resolve(results.data)
            })
            .catch(error => {
                reject(error)
            })
    })
};

const getRoomById = (id) => {
    return new Promise((resolve, reject) => {
        axios
            .get(`/api/room/${id}`)
            .then(res => {
                resolve(res.data);
            })
            .catch(err => {
                reject(err);
            });
    });
};

export default { getRequest, getRoomById }