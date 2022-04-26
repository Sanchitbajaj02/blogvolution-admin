import React, { useState, useContext } from "react";
import { Link } from "react-router-dom";
import { BlogContext } from "../../Context/BlogContext";

const list = [
  { data: "Home", link: "/dashboard", icon: "fa fa-home" },
  { data: "Posts", link: "/posts", icon: "fa fa-thumb-tack" },
  { data: "Comments", link: "/comments", icon: "fa fa-comment " },
  // { data: "Analytics", link: "/analytics", icon: "fa fa-signal " },
];

const LeftPanel = () => {
  const [value, setValue] = useState(0);

  const context = useContext(BlogContext);

  const logout = () => {
    context.setUser(null);
    window.sessionStorage.removeItem("token");
    window.sessionStorage.removeItem("email");
    window.sessionStorage.removeItem("name");
  };

  return (
    <React.Fragment>
      <main className="main-styling">
        <section>
          <h4 className="font-weight-bolder">
            <i className="fa fa-tachometer"></i>&nbsp;Dashboard
          </h4>
        </section>

        <section
          style={{
            textAlign: "center",
            width: "100%",
          }}>
          <figure>
            <img
              src={process.env.PUBLIC_URL + "Images/adminuser.png"}
              alt="user profile"
              className="img-fluid user-profile-img"
            />
          </figure>
          <h4 className="my-2">
            <i className="fa fa-user-o"></i>&nbsp; {context.user?.name}
          </h4>
          <a
            href="https://rcc-blog.vercel.app"
            rel="noreferrer"
            className="btn blogbutton font-weight-bolder my-2"
            target="_blank"
            type="button">
            <i className="fa fa-book me-2"></i>&nbsp;View Blog
          </a>
        </section>

        <section>
          {list.map((detail, index) => (
            <Link
              onClick={() => {
                setValue(index);
              }}
              key={index}
              className={`btn blogbutton font-weight-bolder my-2 ${
                index === value && `isActive`
              }`}
              // activeClassName="isActive"
              to={detail.link}>
              <i className={detail.icon}></i>&nbsp;{detail.data}
            </Link>
          ))}
        </section>

        <section>
          <div className="left-bottom-buttons fs-5 font-weight-bolder m-2">
            <i className="fa fa-cog fa-lg me-2"></i> Settings
          </div>
          <div
            className="left-bottom-buttons fs-5 font-weight-bolder m-2"
            onClick={logout}>
            <i className="fa fa-sign-out fa-lg me-2"></i> Logout
          </div>
        </section>
      </main>
    </React.Fragment>
  );
};

export default LeftPanel;
