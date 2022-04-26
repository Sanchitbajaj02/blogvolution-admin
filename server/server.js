const dotenv = require("dotenv");
dotenv.config();

const express = require("express");
const app = express();
const morgan = require("morgan");
const cors = require("cors");

const port = process.env.PORT || 3000;

// middlewares
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(morgan("dev"));
app.use(cors());

// Calling database and authenticate
const db = require("./database/db");
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log("MYSQL database connected");
});

// admin route
const adminRouter = require("./routes/admin");
app.use("/", adminRouter);

const userRouter = require("./routes/user");
app.use("/admin", userRouter);


// const tk = require("./middleware/token");
// app.get("/", tk.jwtVerification, (req, res) => {
//   res.send("lorem")
// })

//root route
app.use("*", (req, res) => {
  res.status(200);
  res.send({
    message: "this is the root route",
  });
});

// console.log("port", port);
// console.log("process.env.PORT", process.env.PORT);

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}`);
});
