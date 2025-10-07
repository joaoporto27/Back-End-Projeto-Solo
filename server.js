require("dotenv").config();
const express = require("express");
const cors = require("cors");
const cardRoutes = require("./src/routes/cardRoutes");

const app = express();
app.use(cors());
app.use(express.json());
app.use("/api/cards", cardRoutes);

const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
    console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
