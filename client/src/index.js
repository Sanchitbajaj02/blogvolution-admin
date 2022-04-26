import React from "react";
import ReactDOM from "react-dom";

import App from "./App";

// CSS import
import "bootstrap/dist/css/bootstrap.min.css";
import "font-awesome/css/font-awesome.min.css";

import "./Styles/index.css";
import "./Styles/dashboardComp.css";
import "./Styles/footer.css";
import "./Styles/posts.css";
import "./Styles/analytics.css";
import "./Styles/Home.css"; 

import { BrowserRouter } from "react-router-dom";
// import reportWebVitals from "./reportWebVitals";
ReactDOM.render(
  <React.StrictMode>
    <BrowserRouter>
      <App />
    </BrowserRouter>
  </React.StrictMode>,
  document.getElementById("root")
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
// reportWebVitals();
