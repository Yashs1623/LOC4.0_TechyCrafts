import React from 'react'
import Ngo from "../images/ngoCard.PNG"

function Card3(props) {
  return (
    <div className="card">
          <div className="card-body" >
            <img src={Ngo} alt=""  />
            <h2>{props.orgtitle}</h2>
            <p>{props.req}</p>
            <p>{props.prov}</p>
            <p>{props.contact}</p>
            <p>{props.address}</p>
            <button  class="btn btn-primary" type="submit">Collab Now</button>
          </div>
        </div>
  )
}

export default Card3
