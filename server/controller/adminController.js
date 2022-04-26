const express = require("express");
const db = require("../database/db");
const slugify = require("slugify");

//show Author Posts
module.exports = {
  showAuthorPost: async function (req, res) {
    let sql = `Select * FROM blog WHERE userId ='${req.result.userId}' AND visibility = '1'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "All your posts are displayed",
        result: result,
      });
    });
    console.log(query.sql);
  },

  //show comments on author post
  showPostComments: async function (req, res) {
    let sql = `SELECT C.commentId, C.author, B.blogTitle, C.comment, C.createdAt FROM blog B INNER JOIN comments C WHERE B.blogId = C.blogId AND C.userId='${req.result.userId}' AND C.visibility='1'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;

      res.status(200).json({
        message: "Comments on post are displayed",
        result: result,
      });
    });
    console.log(query.sql);
  },

  //Create new post
  newPost: async function (req, res) {
    let { blogTitle, blogImg, metaDescription, blogContent, category } =
      req.body;
    let sql = `INSERT INTO blog SET ?`;

    let createPost = {
      userId: req.result.userId,
      blogTitle: blogTitle,
      blogImg: blogImg,
      metaDescription: metaDescription,
      blogContent: blogContent,
      category: category,
      slug: slugify(blogTitle, {
        replacement: "-",
        lower: true,
        remove: /[*+~.()'"!:@]/g,
      }),
    };

    const query = db.query(sql, createPost, (err, results) => {
      if (err) throw err;
      res.status(200).json({
        message: "New Post created",
        result: results,
      });
    });
    console.log(query.sql);
  },

  // Delete the post
  deletePost: async function (req, res) {
    // let sql = `DELETE FROM blog WHERE blogId ='${req.params.blogId}'`;
    let sql = `UPDATE blog SET visibility = 0 WHERE blogId='${req.params.blogId}'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Post deleted",
        result: result,
      });
    });
    console.log(query.sql);
  },

  // Delete the post
  deleteComment: async function (req, res) {
    // let sql = `DELETE FROM blog WHERE blogId ='${req.params.blogId}'`;
    let sql = `UPDATE comments SET visibility = 0 WHERE commentId='${req.params.commentId}'`;

    const query = db.query(sql, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Comment deleted",
        result: result,
      });
    });
    console.log(query.sql);
  },

  //get the category list from database
  getCategoryList: async function (req, res) {
    let sqlQuery = `SELECT categoryValue, slug FROM category_master`;

    const query = db.query(sqlQuery, (err, result) => {
      if (err) throw err;
      res.status(200).json({
        message: "Category list is displayed",
        result: result,
      });
    });
  },
};
