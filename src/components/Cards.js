import React, { useState } from 'react'
import { ProgressBar } from 'react-bootstrap';
import img1 from "../images/img1.jpg"
import img2 from "../images/img2.jpg"
import img3 from "../images/img3.jpg"
const Cards = (props) => {
  const image=[img1,img2,img3];
  const [no,setNo]=useState(20);
 function HandleEvent(){
  setNo(no+5);
  alert("YOU ARE NOW A VOLUNTEER");

  }
  return (
    <div className='col-6'>
      <div className="card">
          <img src={image[props.index]} alt="image3" />
          <div className="card-body">
            <h2>{props.title}</h2>
            <p>{props.desc}</p>
            <p>place:{props.place}</p>
            <p>{props.date}</p>
            
          </div>
          <button  class="btn btn-primary" onClick={HandleEvent} id="bottom" type="submit">Volunteer Now</button>
          <ProgressBar now={no} />
        </div>
        
        
        </div>
  )
}

export default Cards
