import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import imglink from "../images/fund.jpg";

const Fund = () => {
  const [credentials, setCredentials] = useState({
    title: "",
    org_name: "",
    price: "",
    desc: "",
    date: "",
  });
  let navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    var myHeaders = new Headers();
    myHeaders.append(
      "Authorization",
      "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyMmM5ZWFmZDZkMWQwYmM4ZDdkOWUxMiIsImlhdCI6MTY0NzA5MTM3NSwiZXhwIjoxNjc4NjI3Mzc1fQ.10XgYHrTjNWE_jjxGXgLfrUSbKUGrcY1WCIh0ZQCnKg"
    );
    myHeaders.append("Content-Type", "application/json");

    var raw = JSON.stringify({
      "title": (credentials.title).toString(),
      "org_name": credentials.org_name,
      'price': parseInt(credentials.price),
      "desc":credentials.desc,
      "date":credentials.date
    });

    var requestOptions = {
      method: "POST",
      headers: myHeaders,
      body: raw,
      redirect: "follow",
    };
    console.log(raw);

    await fetch("https://locbackend.herokuapp.com/fundRaise", requestOptions)
      .then((response) => response.text())
      .then((result) => console.log(result))
      .catch((error) => console.log("error", error));

    navigate(`/donate`);
  };

  const onChange = (e) => {
    setCredentials({ ...credentials, [e.target.name]: e.target.value });
  };

  return (
    <div className="">
      <h1
        className="d-flex justify-content-center mb-3 "
        style={{ fontFamily: "Bebas Neue", color: "#03045e" }}
      >
        FUNDRAISER
      </h1>
      <div className="d-sm-block d-md-flex justify-content-between">
        <div className="container">
          <div className=" d-flex justify-content-center ">
            <img
              src={imglink}
              className="event-image1"
              style={{ height: "50%" }}
              alt={"fund"}
            />
          </div>
        </div>
        <div className="w-75 d-md-inline-block">
          <form
            style={{
              fontFamily: "Bebas Neue",
              color: "#358297",
              fontSize: "20px",
            }}
            action="/action_page.php"
            method="post"
            onSubmit={handleSubmit}
          >
            <div className="form-floating mb-3">
              <input
                type="text"
                className="form-control"
                id="name"
                name="title"
                onChange={onChange}
                value={credentials.title}
                minLength={2}
                required
                style={{
                  fontFamily: "system-ui",
                  color: "rgb(10 76 94)",
                  fontSize: "17px",
                }}
              />
              <label htmlFor="name">Fund raiser title</label>
            </div>

            <div className="form-floating mb-3">
              <input
                type="text"
                className="form-control"
                id="email"
                name="org_name"
                onChange={onChange}
                value={credentials.email}
                style={{
                  fontFamily: "system-ui",
                  color: "rgb(10 76 94)",
                  fontSize: "17px",
                }}
              />
              <label htmlFor="email">Name of Organization</label>
            </div>

            <div className="form-floating mb-3">
              <input
                type="text"
                className="form-control"
                id="email"
                name="desc"
                onChange={onChange}
                value={credentials.desc}
                style={{
                  fontFamily: "system-ui",
                  color: "rgb(10 76 94)",
                  fontSize: "17px",
                }}
              />
              <label htmlFor="email">Motive</label>
            </div>

            <div className="form-floating mb-3">
              <input
                type="number"
                className="form-control"
                id="add"
                name="price"
                onChange={onChange}
                value={credentials.price}
                style={{
                  fontFamily: "system-ui",
                  color: "rgb(10 76 94)",
                  fontSize: "17px",
                }}
              />

              <label htmlFor="add">Goal</label>
            </div>
            <div className="form-floating mb-3">
              <input
                type="date"
                className="form-control"
                id="reg"
                name="date"
                onChange={onChange}
                value={credentials.date}
                style={{
                  fontFamily: "system-ui",
                  color: "rgb(10 76 94)",
                  fontSize: "17px",
                }}
              />
              <label htmlFor="reg">Date</label>
            </div>
            <div className="d-flex justify-content-center">
              <button class="btn btn-primary" type="submit">
                Submit
              </button>
            </div>
          </form>
        </div>
      </div>
    </div>
  );
};

export default Fund;
