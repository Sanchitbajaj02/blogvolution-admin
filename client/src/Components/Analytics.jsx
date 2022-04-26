import React from "react";

const Analytics = () => {
  return (
    <React.Fragment>
      <div className="container my-4 ">
        <div className="row">
          <div className="col-lg-12 border my-5 bg-white text-dark">
            <p>
              <span className="material-icons ms-3 mt-3">visibility</span>{" "}
              <b className="ms-2 fs-4"> Views</b>
            </p>
            <p className="text-white my-5 text-center py-3 ">
              Graph will come here<b className="text-white">r nihil.</b>
            </p>
          </div>
        </div>
      </div>
      <div className="container parent">
        <div className="row  mb-5 ">
          <div
            className=" col-lg-5 boreder  bg-white text-dark hello mt-4 ms-5"
            id="left"
          >
            <p>
              <span className="material-icons  mt-3 ">watch_later</span>{" "}
              <b className="ms-2 fs-4"> Clicks</b>
            </p>
            <p className="text-dark font-weight-bolder fs-2 my-5 text-center ">
              85ctr
            </p>
          </div>
          <div
            className="col-lg-5 boreder  bg-white text-dark hello mt-4 ms-5"
            id="right"
          >
            <p>
              <span className="material-icons  mt-3">trending_up</span>
              <b className="ms-2 fs-4"> Time spent</b>
            </p>
            <p className="text-dark font-weight-bolder fs-2 my-5 text-center">
              75min
            </p>
          </div>
        </div>
      </div>
    </React.Fragment>
  );
};

export default Analytics;
