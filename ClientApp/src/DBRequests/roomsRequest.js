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

export default { getRequest }