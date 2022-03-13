import React from 'react'
import image3 from "../images/ngo_img1.jpg"

const Cards = (props) => {
  return (
    <div className='col-6'>
      <div className="card">
          <img src={image3} alt="image3" />
          <div className="card-body">
            <h2>{props.title}</h2>
            <p>{props.desc}</p>
            <p>place:{props.place}</p>
            <p>{props.date}</p>
            
          </div>
          <button  class="btn btn-primary" id="bottom" type="submit">Volunteer Now</button>
        </div>
        
        </div>
  )
}

export default Cards
