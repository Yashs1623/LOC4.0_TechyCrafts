import React from 'react'
import image3 from "../images/ngo_img1.jpg"

const Cards2 = (props) => {
  return (
    
      <div className="card">
          <img src={image3} alt="image3" />
          <div className="card-body">
            <h2>{props.title}</h2>
            <p>{props.desc}</p>
            <p>place:{props.place}</p>
            <p>{props.price}</p>
            <p>{props.org}</p>
            <button  class="btn btn-primary" type="submit">Donate Now</button>
          </div>
        </div>
   
  )
}

export default Cards2