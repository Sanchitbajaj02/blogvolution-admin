import React, { useState, useContext } from "react";
import { useHistory } from "react-router-dom";
import "./Login.css";
import { BlogContext } from "../../Context/BlogContext";
import { userLogin } from "../../Util/axios";

import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const Login = () => {
  let context = useContext(BlogContext);
  const history = useHistory();

  let [login, setLogin] = useState({
    email: "",
    password: "",
  });

  const handleChange = (e) => {
    const { name, value } = e.target;
    setLogin({ ...login, [name]: value });
  };

  const handleLogin = (event) => {
    event.preventDefault();
    event.target.reset();
    console.log(login);
    console.log(context);

    userLogin(login)
      .then((data) => {
        console.log(data);
        toast(data.data.message, { type: "success" });

        // alert();
        context.setUser({
          email: data.data.email,
          name: data.data.firstName,
          token: data.data.token,
        });
        window.sessionStorage.setItem("email", data.data.email);
        window.sessionStorage.setItem("name", data.data.firstName);
        window.sessionStorage.setItem("token", data.data.token);
        history.push("/dashboard");
        console.log("success");
      })
      .catch((error) => {
        toast(error.message, { type: "error" });
        console.error(error);
      });
  };

  return (
    <div className="container">
      <div className="log-form">
        <h2>Login to your account</h2>

        <form method="POST" className="form" onSubmit={handleLogin}>
          <div className="form-group py-2">
            <input
              type="email"
              placeholder="Enter Email Address"
              className="form-control form-border-remove no-outline"
              id="email"
              name="email"
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-group py-2">
            <input
              type="password"
              placeholder="Enter Password"
              className="form-control form-border-remove no-outline"
              id="password"
              name="password"
              onChange={handleChange}
              required
            />
          </div>

          <div className="form-group">
            <button type="submit" className="btn btn-col" id="login">
              <span className="log-txt-for">Login</span>
            </button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default Login;
