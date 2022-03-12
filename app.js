const express = require("express");
const mongoose = require("mongoose");
const app = express();
const bodyParser = require("body-parser")
const authRoute = require("./routes/authRoutes");
const dotenv = require("dotenv");
dotenv.config();

const PORT = process.env.PORT || 3000 
// app.use(bodyParser.urlencoded({ extended: true }));
app.use(express.json());
const connectDB = async () => {

    const dbURI = process.env.DATABASE_URL;
    try {
        const conn = await mongoose.connect(dbURI, {
            useUnifiedTopology: true,
            useNewUrlParser: true,
        });
        console.log(`MongoDB Connected: ${conn.connection.host}`);

    } catch (error) {
        console.error(`Mongo DB Error: ${error.message}`);
        process.exit(1);
    }
}

connectDB();

app.get("/", function (req, res) {
    res.send("Get request successful");
});
app.use(authRoute);

app.listen(PORT, function () {
    console.log("Server started on port 3000");
});