const express = require("express");
const db = require("../database/db");
const jwt = require("jsonwebtoken");
const nodemailer = require("nodemailer");

const tokenMiddleware = require("../middleware/token");

module.exports = {
  login: async function (req, res) {
    // Validate User Here
    let userData = req.body;

    let sql = `SELECT * FROM users WHERE email = '${userData.email}' AND password = '${userData.password}'`;

    // Then generate JWT Token
    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      let userExists = result.length;

      if (userExists > 0) {
        if (result[0].roles === 0 || result[0].roles === 1) {
          let resultName = result[0].firstName;
          let resultEmail = result[0].email;
          let resultID = result[0].userId;
          let resultRole = result[0].roles;

          const token = tokenMiddleware.generateToken(resultID);

          // res.send(jwtSecretKey);
          res.status(200).json({
            message: `Login Successful. Welcome ${resultName}`,
            email: resultEmail,
            firstName: resultName,
            userId: resultID,
            userRole: resultRole,
            token: token,
          });
        } else {
          res.status(401).json({ message: "Only author and user can access" });
        }
      } else {
        res.status(400).json({
          message: "Invalid credentials",
        });
      }
    });
    console.log(query.sql);
  },
};


/*

users(user_master)
isActive: status of the account
roles: roles of the user(by default 2)
0 - admin (only 1)
1 - author (multiple)
2 - user (multiple)

*/