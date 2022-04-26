import React, { useEffect, useState } from "react";
import Home from "./Components/Home";
import Posts from "./Components/Posts";
import Comments from "./Components/Comments";
// import Analytics from "./Components/Analytics";
import { Redirect, Switch, Route, useHistory } from "react-router-dom";

import Footer from "./Components/Footer";
import LeftPanel from "./Components/DashboardComponents/LeftPanel";
import Login from "./Components/Login/Login";
import NewPost from "./Components/NewPost/NewPost";
import { Container } from "reactstrap";
import { BlogContext } from "./Context/BlogContext";

import { ToastContainer } from "react-toastify";
import { firebaseConfig } from "./Util/config";
import firebase from "firebase/compat/app";
import "firebase/compat/database";
import "firebase/compat/storage";

//local storage items
const emailLocal = sessionStorage.getItem("email");
const tokenLocal = sessionStorage.getItem("token");
const nameLocal = sessionStorage.getItem("name");

const Layout = ({ children }) => {
  return (
    <React.Fragment>
      <div className="container-fluid" style={{ width: "98%" }}>
        <div className="d-flex">
          <div className="col-12 col-md-2 sticky-bar bg-white my-4 cont h-100">
            <LeftPanel />
          </div>
          <div className="mx-2"></div>
          <div className="col-12 col-md-10 bg-white my-4 cont">
            <Container fluid>{children}</Container>
          </div>
        </div>
      </div>
      <Footer />
    </React.Fragment>
  );
};

function App() {
  firebase.initializeApp(firebaseConfig);
  const [user, setUser] = useState({
    email: emailLocal,
    name: nameLocal,
    token: tokenLocal,
  });

  const history = useHistory();

  useEffect(() => {
    if (!user?.token) {
      history.push("/");
    }
  }, [user?.token, history]);

  return (
    <React.Fragment>
      <ToastContainer />
      <BlogContext.Provider value={{ user, setUser }}>
        <Switch>
          <Route exact path="/">
            <Login />
          </Route>
          <Route exact path="/new/post">
            <NewPost />
          </Route>
          <Route exact path="/dashboard">
            <Layout>
              <Home />
            </Layout>
          </Route>
          <Route exact path="/posts">
            <Layout>
              <Posts />
            </Layout>
          </Route>
          {/* <Route exact path="/analytics">
            <Layout>
              <Analytics />
            </Layout>
          </Route> */}
          <Route exact path="/comments">
            <Layout>
              <Comments />
            </Layout>
          </Route>
          <Route>
            <Redirect to="/dashboard" />
          </Route>
        </Switch>
      </BlogContext.Provider>
    </React.Fragment>
  );
}

export default App;

// Dashboard component is an entry component
