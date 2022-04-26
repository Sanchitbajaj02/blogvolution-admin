const express = require("express");
const router = express.Router();

const Admin = require("../controller/adminController");

const middlewares = require("../middleware/token");

//showAuthorPost
router.get("/posts", middlewares.jwtVerification, Admin.showAuthorPost);

//showPostComments
router.get(
  "/showPostComments",
  middlewares.jwtVerification,
  Admin.showPostComments
);

//newPostCreated
router.post("/add-blog", middlewares.jwtVerification, Admin.newPost);

//DeletePost
router.delete(
  "/deletePost/:blogId",
  middlewares.jwtVerification,
  Admin.deletePost
);

// delete commment
router.delete(
  "/deleteComment/:commentId",
  middlewares.jwtVerification,
  Admin.deleteComment
);

// get the category list from database
router.get("/get-category", middlewares.jwtVerification, Admin.getCategoryList);

module.exports = router;
