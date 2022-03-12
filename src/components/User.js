import React from 'react'
import ngoimg from '../images/ngo_img2.jpg'
import { useNavigate } from 'react-router-dom';
import Slider from './Slider';

function User() {
    let navigate = useNavigate();
    const renderVolunteer=()=>{
        navigate(`/volunteer`)
        
    }
    const renderEvent=()=>{
        navigate(`/donate`)
    }

  return (
     
    <div className='container row justify-content-center'>
     <Slider/>
      <div className="container col-xxl-8 px-4 py-5">
    <div className="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div className="col-10 col-sm-8 col-lg-6">
        <img src={ngoimg} className="d-block mx-lg-auto img-fluid imguser" alt="Bootstrap Themes" width="700" height="500" loading="lazy"/>
      </div>
      <div className="col-lg-6">
        <h3 className="display-5 fw-bold lh-1 mb-3">About Little hopes Foundation</h3>
        <p className="lead">Little hopes,an Indian social development organization, is directly benefitting over 15 lakh children and their families every year. We have more than 400 live welfare projects on education, healthcare, livelihood, and women’s empowerment in over 2,000 remote villages and urban slums across 25 states of India.
The groundwork for a better life lies in education. It is the most powerful catalyst for social transformation. However, a child cannot be educated in isolation. Only an empowered family, especially the mother, would be willing to educate their child. Thus, rather than focusing on only one stage of a person's life, we believe in the lifecycle approach.
Education empowers an individual to earn their livelihood and also increases one's awareness on a range of issues. From healthcare, to appropriate social behavior, to understanding one's rights – Smile Foundation seeks to educate, empower and cultivate better citizens.</p>
      </div>
    </div>
  </div>
  <h1 className="container row justify-content-center">Participate in Event</h1>
  <div className="container row justify-content-between">
    <div className="col-md-5">
        <div className="h-100 p-5  border rounded-3">
        <div className="d-flex justify-content-center"> <i className="fa-solid fa-handshake-angle fa-2xl"></i></div>
        
          <h2  className="mt-3 d-flex justify-content-center">Donate for cause</h2>
          <p>“Service to others is the rent you pay for your room here on earth.”</p>
          <button className="btn btn-outline-secondary container" type="button" onClick={renderEvent}>Donate</button>
        </div>
      </div>
      <div className="col-md-5">
        <div className="h-100 p-5 bg border rounded-3">
        <div className="d-flex justify-content-center"><i className="fa-solid fa-calendar-days fa-2xl"></i></div>
        
          <h2 className="mt-3 d-flex justify-content-center">Volunter for event</h2>
          <p>“Volunteering is at the very core of being a human.  No one has made it through life without someone else’s help.” </p>
          <button className="btn btn-outline-secondary container " type="button" onClick={renderVolunteer} >Volunter</button>
        </div>
      </div>      

  </div>
    </div>
  )
}

export default User;
