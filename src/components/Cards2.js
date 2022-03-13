import React from "react";
import { useNavigate } from "react-router-dom";

import img1 from "../images/image1.png";
import img2 from "../images/image2.jpg";
const Card = (props) => {
  const image=[img1, img2];
  console.log(props.index);
  var location = useNavigate();
  const redirect = () => {
    location("/payment");
  };
  return (
    <div className="col-6">
      <div className="card">
        <img src={image[props.index]} alt="image3" />
        <div className="card-body">
          <h2>{props.title}</h2>
          <p>{props.desc}</p>
          <p>place:{props.place}</p>
          <p>{props.price}</p>
          <p>{props.org}</p>
        </div>
        <button
          class="btn btn-primary"
          id="bottom"
          type="submit"
          onClick={redirect}
        >
          Donate Now
        </button>
      </div>
    </div>
  );
};

export default Card;
