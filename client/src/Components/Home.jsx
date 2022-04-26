import React, { useEffect, useState, useContext } from "react";
import axios from "axios";
import { BlogContext } from "../Context/BlogContext";
import { Link } from "react-router-dom";

const Home = () => {
  const [posts, setPosts] = useState([]);
  const [comments, setComments] = useState([]);
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

  useEffect(() => {
    axios({
      url: "http://localhost:3003/showPostComments",
      method: "GET",
      headers: {
        authorization: `Bearer ${context.user?.token}`,
      },
    }).then((data) => {
      setComments(data.data.result);
    });
  }, [context.user?.token]);
  return (
    <React.Fragment>
      <main>
        <h3 className="text-center my-5">Dashboard</h3>
        <div className="row my-3">
          <div className="col-md-6 my-2">
            <div className="home-table-box cont">
              <div className="px-2 py-3">
                <h4>Latest Comments</h4>
              </div>

              <table className="table table-striped">
                <thead>
                  <tr>
                    <th>S No.</th>
                    <th>Comment</th>
                    <th>Author</th>
                  </tr>
                </thead>
                <tbody>
                  {comments.slice(0, 3).map((item, i) => {
                    return (
                      <React.Fragment key={item.blogId}>
                        <tr>
                          <td>{i + 1}</td>
                          <td>{item.comment}</td>
                          <td>{item.author}</td>
                        </tr>
                      </React.Fragment>
                    );
                  })}
                </tbody>
              </table>

              <Link to="/comments" className="Link-highlight">
                <p className="px-2 py-2">Click to see more...</p>
              </Link>
            </div>
          </div>
          <div className="col-md-6 my-2">
            <div className="home-table-box cont">
              <div className="px-2 py-3">
                <h4>Published Posts</h4>
              </div>

              <table className="table table-striped">
                <thead>
                  <tr>
                    <th>S No.</th>
                    <th>Posts</th>
                    <th>Views</th>
                  </tr>
                </thead>
                <tbody>
                  {posts.slice(0, 3).map((item, i) => {
                    return (
                      <React.Fragment key={item.blogId}>
                        <tr>
                          <td>{i + 1}</td>
                          <td>{item.blogTitle}</td>
                          <td>{item.viewCounter}</td>
                        </tr>
                      </React.Fragment>
                    );
                  })}
                </tbody>
              </table>

              <Link to="/posts" className="Link-highlight">
                <p className="px-2 py-2">Click to see more...</p>
              </Link>
            </div>
          </div>
        </div>
      </main>
    </React.Fragment>
  );
};

export default Home;
