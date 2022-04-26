import React, { useEffect, useState, useContext } from "react";
import { Table } from "reactstrap";
import axios from "axios";
import { BlogContext } from "../Context/BlogContext";
import { Link } from "react-router-dom";
// import { showAuthorPost } from "../Util/axios";

import { toast } from "react-toastify";
import "react-toastify/dist/ReactToastify.css";

const Posts = () => {
  const [posts, setPosts] = useState([]);
  const context = useContext(BlogContext);

  useEffect(() => {
    axios({
      url: "http://localhost:3003/posts",
      method: "GET",
      headers: {
        authorization: `Bearer ${context.user?.token}`,
      },
    }).then((data) => {
      setPosts(data.data.result);
      // console.log(data.data.result);
    });
  }, [context.user?.token]);

  //deleting post
  const deletePost = (id) => {
    axios({
      url: `http://localhost:3003/deletePost/${id}`,
      method: "DELETE",
      headers: {
        authorization: `Bearer ${context.user?.token}`,
      },
    })
      .then((data) => {
        // alert("Post deleted!");
        toast(data.data.message, { type: "success" });
        setTimeout(() => {
          window.location.reload();
        }, 2000);
      })
      .catch((error) => {
        console.log(error);
        toast(error.message, { type: "error" });
      });
  };

  return (
    <React.Fragment>
      <div className="container-fluid">
        <header className="table-header-flex">
          <h3>Posts</h3>
          <Link to="/new/post">
            <button className=" postbutton">
              <h5 className="my-2 mx-2">
                <i className="fa fa-plus-circle me-2"></i>&nbsp;New Post
              </h5>
            </button>
          </Link>
        </header>
        <section style={{ overflowX: "hidden" }}>
          <Table hover className="table table-striped table-grid">
            <thead>
              <tr>
                <th>#</th>
                <th>Title</th>
                <th>Views</th>
                <th>Featured</th>
                <th>Category</th>
                <th>Date</th>
                <th>Options</th>
              </tr>
            </thead>
            <tbody>
              {posts.map((item, i) => {
                return (
                  <React.Fragment key={item.blogId}>
                    <tr>
                      <td>{i + 1}</td>
                      <td>{item.blogTitle}</td>
                      <td>{item.viewCounter}</td>
                      <td>{item.featured}</td>
                      <td>{item.category}</td>
                      <td>{new Date(item.createdAt).toLocaleDateString()}</td>
                      <td>
                        <a
                          href={"https://rcc-blog.vercel.app/blog/" + item.slug}
                          target="_blank"
                          rel="noreferrer"
                        >
                          <i className="fa fa-eye btn option-btn font-weight-bolder mx-1"></i>
                        </a>
                        <i className="fa fa-pencil btn option-btn font-weight-bolder mx-1"></i>
                        <i
                          className="fa fa-trash-o btn option-btn font-weight-bolder mx-1"
                          onClick={() => deletePost(item.blogId)}
                        ></i>
                      </td>
                    </tr>
                  </React.Fragment>
                );
              })}
            </tbody>
          </Table>
        </section>
      </div>
    </React.Fragment>
  );
};

export default Posts;

// {
//   /* TODO: Use of icon instead of image */
// }
