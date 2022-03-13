import React from "react";
import Card from "./Cards2";
import { useState, useEffect } from "react";
// import img1 from "../images/image1.png";
// import img2 from "../images/image2.png";
// import img3 from '../images/image3.png';
const Donate = () => {
  const [fund, setFund] = useState([]);
  useEffect(() => {
    var myHeaders = new Headers();
    myHeaders.append(
      "Authorization",
      "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyMmM5ZWFmZDZkMWQwYmM4ZDdkOWUxMiIsImlhdCI6MTY0NzA5MTM3NSwiZXhwIjoxNjc4NjI3Mzc1fQ.10XgYHrTjNWE_jjxGXgLfrUSbKUGrcY1WCIh0ZQCnKg"
    );
    var requestOptions = {
      method: "GET",
      headers: myHeaders,
      redirect: "follow",
    };

    fetch("https://locbackend.herokuapp.com/getfundRaise", requestOptions)
      .then((response) => response.json())
      .then((result) => {
        setFund(result);
      })
      .catch((error) => console.log("error", error));
  }, []);

  

  return (
    <>
      <h2 style={{ margin: "auto" }}>Featured Fundraisers</h2>
      <div className="container row ">
        {fund.map((fund,index) => (
          <Card
            title={fund.title}
            date={fund.date}
            desc={fund.desc}
            org={fund.org_name}
            price={fund.price}
            index = {index}
          />
        ))}
      </div>
    </>
  );
};

export default Donate;
