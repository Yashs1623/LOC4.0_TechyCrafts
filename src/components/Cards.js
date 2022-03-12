import React from 'react'
import image3 from "../images/ngo_img1.jpg"

const Cards = () => {
  return (
    
      <div className="card">
          <img src={image3} />
          <div className="card-body">
            <h2>this is title</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p>
            <h5>author</h5>
          </div>
        </div>
   
  )
}

export default Cards
