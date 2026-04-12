// Configuration for single server deployment
const isProduction = window.location.hostname !== 'localhost';
const SERVER_IP = '239.255.255.250';

export const API_URL = isProduction
  ? `http://${SERVER_IP}:30001/api` // Backend NodePort
  : 'http://localhost:5000/api';

export default { API_URL, SERVER_IP };
