// index.js
const express = require('express');
const http = require('http');
const socketIo = require('socket.io');
const axios = require('axios');

const app = express();
const server = http.createServer(app);
const io = socketIo(server, { cors: { origin: "*" } });

// URL for the Group Meeting Service to be notified
const GROUP_MEETING_SERVICE_URL = process.env.GROUP_MEETING_SERVICE_URL || 'http://localhost:8080/api/sessionEvent';

const PORT = process.env.PORT || 3000;
server.listen(PORT, () => console.log(`Signaling Service running on port ${PORT}`));
