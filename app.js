const express = require("express");
const cors = require("cors");

const app = express();

app.use(cors());
app.use(express.json());

const termekRoutes = require("./routes/termekRoutes");

app.use("/api/termekek", termekRoutes);

const PORT = 3000;

app.listen(PORT, () => {
    console.log(`Szerver fut a ${PORT}-es porton`);
});