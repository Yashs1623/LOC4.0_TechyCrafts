import React from 'react'
import { useState, useEffect } from "react";
import Cards from "./Cards";
const Volunteer = () => {
    const [event, setEvent] = useState([]);
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
          
        fetch("https://locbackend.herokuapp.com/getEvents", requestOptions)
       .then((response) => response.json())
       .then((result) => {
          
          setEvent(result);
         
         
       }
       ).catch((error) => console.log("error", error));
          
      
    }, [])
  
    

   

    

  return (
    <div>
      <h2 style={{ margin: "auto" }}>Featured Fundraisers</h2>
      {event.map(event => <Cards title={event.event_name} date={event.date} place={event.place} no={event.volunteers_required}  desc={event.desc}/>)}
    </div>
  );
}

export default Volunteer
