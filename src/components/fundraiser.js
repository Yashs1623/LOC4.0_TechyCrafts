import React from "react";
import imglink from "../images/fund.jpg"

const Fund = () => {
   
return (
<div className="">
      <h1 className="d-flex justify-content-center mb-3 "style={{fontFamily:"Bebas Neue",color:"#03045e"}} >FUNDRAISER</h1>
      <div className="d-sm-block d-md-flex justify-content-between"> 
      <div className="container">
        <div className=" d-flex justify-content-center ">
        <img src={imglink} className="event-image1" style={{height:"50%"}}/>
              
        </div>
      </div>
      <div className="w-75 d-md-inline-block">     
      <form  style={{fontFamily:"Bebas Neue",color:"#358297", fontSize:'20px'}} >
        <div className="form-floating mb-3">
          <input
            type="text"
            className="form-control"
            id="name"
            name="name"
          
            
            minLength={2} required
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
          />
          <label htmlFor="name">Fund raiser title</label>
        </div>
        
        <div className="form-floating mb-3">
          <input
            type="text"
            className="form-control"
            id="email"
            name="email"
           
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
          />
          <label htmlFor="email">Name of Organization</label>
        </div>

        <div className="form-floating mb-3">
          <input
            type="text"
            className="form-control"
            id="email"
            name="email"
           
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
          />
          <label htmlFor="email">Motive</label>
        </div>

        <div className="form-floating mb-3">
          <input
            type="number"
            className="form-control"
            id="add"
            name="add"
           
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
          />
          
          <label htmlFor="add">Goal</label>
        </div>
        <div className="form-floating mb-3">
          <input
            type="date"
            className="form-control"
            id="reg"
            name="reg"
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
          />
          <label htmlFor="reg">Date</label>
        </div>
        <div className="d-flex justify-content-center">
        <button class="btn btn-primary" type="submit">Submit</button>

        </div>
      </form>
      </div>
    </div>
    </div>
);
};

export default Fund;