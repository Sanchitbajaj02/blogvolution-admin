import React, { useState, useEffect, useContext } from "react";
import Footer from "../Footer";
import "./NewPost.css";
import firebase from "firebase/compat/app";
import axios from "axios";
import baseURL from "../../Util/axios";
import { BlogContext } from "../../Context/BlogContext";

import { CKEditor } from "@ckeditor/ckeditor5-react";
import ClassicEditor from "@ckeditor/ckeditor5-build-classic";
import { Link } from "react-router-dom";
import { readAndCompressImage } from "browser-image-resizer";
import { imageConfig } from "../../Util/config";
import { toast } from "react-toastify";
import { Spinner } from "reactstrap";

function NewPostMain() {
  const [getblogInputData, setblogInputData] = useState({
    blogTitle: "",
    blogImg: "",
    metaDescription: "",
    blogContent: "",
    category: "",
  });
  const [data, setData] = useState("");

  const [isUploading, setIsUploading] = useState(false);
  const [downloadUrl, setDownloadUrl] = useState(null);
  const [getCategory, setCategory] = useState([]);
  const context = useContext(BlogContext);

  // const imageChooser = (e) => {
  //   console.log(e.target.file);
  //   return e.target.files[0];
  // }

  useEffect(() => {
    axios({
      method: "GET",
      url: `${baseURL}/get-category`,
      headers: { authorization: `Bearer ${context.user?.token}` },
    })
      .then((categoryData) => {
        setCategory(categoryData.data.result);
        // console.log(categoryData.data.result);
      })
      .catch((err) => console.log(err));
  }, [context.user?.token]);

  const imagePicker = async (e) => {
    // TODO: upload image and set D-URL to state

    try {
      const file = e.target.files[0];

      var metadata = {
        contentType: file?.type,
      };

      // console.log(file.name);

      let resizedImage = await readAndCompressImage(file, imageConfig);

      const storageRef = await firebase.storage().ref();
      var uploadTask = storageRef
        .child("blog-upload/" + file?.name)
        .put(resizedImage, metadata);

      uploadTask.on(
        firebase.storage.TaskEvent.STATE_CHANGED,
        (snapshot) => {
          setIsUploading(true);
          var progress =
            (snapshot.bytesTransferred / snapshot.totalBytes) * 100;

          // eslint-disable-next-line default-case
          switch (snapshot.state) {
            case firebase.storage.TaskState.PAUSED:
              setIsUploading(false);
              console.log("UPloading is paused");
              break;
            case firebase.storage.TaskState.RUNNING:
              console.log("UPloading is in progress...");
              break;
          }
          if (progress === 100) {
            setIsUploading(false);
            toast("uploaded", { type: "success" });
          }
        },
        (error) => {
          toast("something is wrong in state change", { type: "error" });
        },
        () => {
          uploadTask.snapshot.ref
            .getDownloadURL()
            .then((downloadURL) => {
              setDownloadUrl(downloadURL);
            })
            .catch((err) => console.log(err));
        }
      );
    } catch (error) {
      console.error(error);
      toast("Something went wrong on client side", { type: "error" });
    }
  };
  // console.log(downloadUrl);

  const getCKEditorData = (e, editor) => setData(editor.getData());
  console.log("CK Editor", data);
  console.log("Normal data", getblogInputData);

  const handleStateChange = (event) => {
    setblogInputData({
      ...getblogInputData,
      blogContent: data,
      [event.target.name]: event.target.value,
    });
  };

  const handleSave = async (event) => {
    setblogInputData({
      ...getblogInputData,
      blogImg: downloadUrl,
      blogContent: data,
    });
    toast("Blog is ready to post", { type: "info" });
  };

  const handleSubmit = async (event) => {
    await axios({
      method: "POST",
      url: `${baseURL}/add-blog`,
      data: getblogInputData,
      headers: { authorization: `Bearer ${context.user?.token}` },
    })
      .then((resp) => {
        console.log(resp);
        toast("Blog added successfully", { type: "success" });
        window.location.href = `/posts`;
      })
      .catch((err) => {
        console.log(err);
        toast(err.message, { type: "error" });
      });
  };

  // permalink = slug
  return (
    <React.Fragment>
      <div className="container-fluid">
        <div className="d-flex justify-content-center m-2">
          <div className="col-12 col-md-10 bg-white my-4 cont">
            <div className="container">
              <div className="row my-4">
                {/* <IconContext.Provider value={{ color: "black" }}> */}
                <Link to="/posts">
                  <div className="col-6">
                    {/* <AiOutlineArrowLeft size={25} /> */}
                    <i className="fa fa-arrow-left text-dark fa-lg"></i>
                  </div>
                </Link>
                {/* </IconContext.Provider> */}
                {/* <div className="col-6 color-black ml-auto">
                  <button className="btn save text-white fw-bolder postbutton px-5">
                    Save{" "}
                    <span className="pl-2">
                      <i className="fa fa-save fa-lg"></i>
                    </span>
                  </button>
                </div> */}
              </div>
            </div>
            <div className="container p-4">
              <div className="row">
                <input
                  type="text"
                  placeholder="Title of the post goes here"
                  className="form-control form-border-remove no-outline"
                  name="blogTitle"
                  onChange={handleStateChange}
                  required
                />
              </div>
            </div>
            <CKEditor
              editor={ClassicEditor}
              data={data}
              onChange={getCKEditorData}
              config={{
                toolbar: {
                  items: [
                    "heading",
                    "|",
                    "bold",
                    "italic",
                    "|",
                    "bulletedList",
                    "numberedList",
                    "|",
                    "undo",
                    "redo",
                  ],
                },
              }}
            />
          </div>

          <div className="mx-2"></div>

          <div className="col-12 col-md-2 sticky-bar bg-white my-4 cont h-100">
            {/* Button */}
            <section className="d-block text-center px-3 py-3">
              <button
                className="btn publish font-weight-bolder text-white w-100 mb-3"
                onClick={handleSave}>
                Save &nbsp;
                <i className="fa fa-paper-plane fa-lg"></i>
              </button>
              <button
                className="btn publish font-weight-bolder text-white w-100 mb-3"
                onClick={handleSubmit}>
                Publish &nbsp;
                <i className="fa fa-paper-plane fa-lg"></i>
              </button>
              <p className="text-center text-success">Status : published</p>
            </section>

            {/* Link block */}
            {/* <section className="d-block text-center px-3 py-3">
              <b className="fs-5">Permalink</b>
              <input
                type="text"
                className="w-100 mt-3 mb-4 form-control form-border-remove no-outline p-1  "
                placeholder="Link"
              />
            </section> */}

            {/* Category selection block */}
            <section className="d-block text-center px-3 py-3">
              <b className="fs-5 ">Catogories</b>
              <div className="mt-2 mb-3 ">
                <form action="">
                  <select
                    id="catogory"
                    name="category"
                    className="form-control form-border-remove no-outline"
                    onChange={handleStateChange}>
                    <option value="Default" className="options">
                      Default
                    </option>
                    {getCategory.map((cat) => {
                      return (
                        <option
                          value={cat.categoryValue}
                          className="options"
                          key={cat.slug}>
                          {cat.categoryValue}
                        </option>
                      );
                    })}
                    {/* <option value="Health" className="options">
                      Health
                    </option>
                    <option value="Fitness" className="options">
                      Fitness
                    </option>
                    <option value="Workout" className="options">
                      Workout
                    </option>
                    <option value="Workout" className="options">
                      default
                    </option> */}
                  </select>
                </form>
              </div>
            </section>

            {/* Image block */}
            {/* <section className="d-block text-center px-3 py-3">
              <p className="dropbox p-2 ">Click here to select cover image
              </p>
            </section> */}
            {downloadUrl === null ? (
              <div className="upload-btn-wrapper">
                <button className="btn postbutton">Upload a file</button>
                <input
                  type="file"
                  name="blogImg"
                  id="imagepicker"
                  accept="image/*"
                  multiple={false}
                  onChange={(e) => imagePicker(e)}
                  className="form-control dropbox"
                />
              </div>
            ) : (
              <div className="text-center">
                <img
                  src={downloadUrl}
                  alt="file"
                  height="150"
                  width="200"
                  className="text-center img-fluid"
                />
                <button
                  onClick={() => setDownloadUrl(null)}
                  className="btn postbutton mt-2">
                  Select another image
                </button>{" "}
              </div>
            )}
            {isUploading ? (
              <div className="text-center">
                <Spinner type="grow" color="primary" size="large" />
              </div>
            ) : (
              ""
            )}

            {/* Meta description */}
            <section className="d-block text-center px-3 py-3">
              <b className="fs-5">Meta Description</b>
              <div className="form-floating my-4">
                <textarea
                  className="form-control form-border-remove no-outline"
                  placeholder="Meta Description"
                  name="metaDescription"
                  onChange={handleStateChange}
                  id="floatingTextarea2"></textarea>
              </div>
            </section>
          </div>
        </div>
      </div>
      <Footer />
    </React.Fragment>
  );
}

// TODO: css of left and right column resp
// col-md-9 newpost-left p-4 ml-5 bg-white my-4 cont text-white left
// col-md-2 mr-5 sticky-bar bg-white my-4 cont min-vh-100 right
export default NewPostMain;
