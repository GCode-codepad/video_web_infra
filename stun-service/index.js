// index.js
const express = require("express");
const app = express();

app.get("/health", (req, res) => {
  res.json({ status: "stun-service is running" });
});

// This service could be extended to proxy or monitor an external TURN/STUN server.
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`STUN Service running on port ${PORT}`);
});
