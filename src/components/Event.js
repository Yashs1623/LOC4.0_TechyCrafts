
import imglink from "../images/Event.jpg"
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";

const Event = () => {
  const [credentials, setCredentials] = useState({
    event_name: "",
    place: "",
    desc: "",
    volunteers_required: "",
    date:""
  });
  let navigate = useNavigate();

  const handleSubmit = async (e) => {
    e.preventDefault();
    var myHeaders = new Headers();
    myHeaders.append("Authorization", "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjYyMmM5ZWFmZDZkMWQwYmM4ZDdkOWUxMiIsImlhdCI6MTY0NzA5MTM3NSwiZXhwIjoxNjc4NjI3Mzc1fQ.10XgYHrTjNWE_jjxGXgLfrUSbKUGrcY1WCIh0ZQCnKg");
    myHeaders.append("Content-Type", "application/json");
    
    var raw = JSON.stringify({
      "event_name": credentials.event_name,
      "place": credentials.place,
      "desc": credentials.desc,
      "volunteers_required": parseInt(credentials.volunteers_required),
      "date":credentials.date
    });
    
    var requestOptions = {
      method: 'POST',
      headers: myHeaders,
      body: raw,
      redirect: 'follow'
    };
    
    fetch("https://locbackend.herokuapp.com/createEvent", requestOptions)
      .then(response => response.text())
      .then(result => console.log(result))
      .catch(error => console.log('error', error));
    navigate(`/volunteer`);
  };

  const onChange = (e) => {
    setCredentials({ ...credentials, [e.target.name]: e.target.value });
  };

   
return (
<div className="">
      <h1 className="d-flex justify-content-center mb-3 "style={{fontFamily:"Bebas Neue",color:"#03045e"}} >START A EVENT</h1>
      <div className="d-sm-block d-md-flex justify-content-between"> 
      <div className="container">
        <div className=" d-flex justify-content-center ">
        <img src={imglink} className="fund-image" alt="fund"/>
              
        </div>
      </div>
      <div className="w-75 d-md-inline-block">     
      <form  style={{fontFamily:"Bebas Neue",color:"#358297", fontSize:'20px' }} action="/action_page.php"
            method="post"
            onSubmit={handleSubmit} >
        <div className="form-floating mb-3">
          <input
            type="text"
            className="form-control"
            id="name"
            name="event_name"
            minLength={2} required
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
            onChange={onChange}
                value={credentials.event_name}
          />
          <label htmlFor="name">Event title</label>
        </div>
        
        

        <div className="form-floating mb-3">
          <input
            type="text"
            className="form-control"
            id="email"
            name="place"
           
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
            onChange={onChange}
                value={credentials.place}
          />
          <label htmlFor="email">Place</label>
        </div>
        <div className="form-floating mb-3">
          <input
            type="text"
            className="form-control"
            id="email"
            name="desc"
           
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
            onChange={onChange}
                value={credentials.desc}
          />
          <label htmlFor="email">Motive</label>
        </div>
        <div className="form-floating mb-3">
          <input
            type="number"
            className="form-control"
            id="add"
            name="volunteers_required"
           
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
            onChange={onChange}
                value={credentials.volunteers_required}
          />
          <label htmlFor="add">No of Volunter required</label>
        </div>
        <div className="form-floating mb-3">
          <input
            type="date"
            className="form-control"
            id="reg"
            name="date"
            style={{fontFamily:"system-ui",color:"rgb(10 76 94)",fontSize:'17px'}}
            onChange={onChange}
            value={credentials.date}
          />
          <label htmlFor="reg">Date</label>
        </div>
        <div className="d-flex justify-content-center">
        <button className="btn btn-primary" type="submit">Start the Event</button>

        </div>
      </form>
      </div>
    </div>
    </div>
);
};

export default Event;