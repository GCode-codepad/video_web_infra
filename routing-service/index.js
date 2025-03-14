// index.js
const mediasoup = require("mediasoup");
const express = require("express");
const http = require("http");
const socketIo = require("socket.io");

const app = express();
const server = http.createServer(app);
const io = socketIo(server, { cors: { origin: "*" } });

let worker;
let router;
const transports = {}; // Map socket IDs to their transports

const PORT = process.env.SFU_PORT || 4000;
server.listen(PORT, () => console.log(`Media Routing Service (SFU) running on port ${PORT}`));
