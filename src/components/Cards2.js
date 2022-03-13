import React from 'react'
import {  useNavigate } from 'react-router-dom'
import image3 from "../images/ngo_img1.jpg"

const Card = (props) => {
  var location=useNavigate();
  const redirect=()=>{
    location('/payment')
  }
  return (
    <div className='col-6'>
      <div className="card">
          <img src={image3} alt="image3" />
          <div className="card-body">
            <h2>{props.title}</h2>
            <p>{props.desc}</p>
            <p>place:{props.place}</p>
            <p>{props.price}</p>
            <p>{props.org}</p>
          </div>
          <button  class="btn btn-primary" id="bottom" type="submit" onClick={redirect} >Donate Now</button>
        </div>
        </div>
   
  )
}

export default Card