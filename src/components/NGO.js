import React from 'react'
import ngoimg from '../images/ngoimg.jpg'
import { useNavigate } from 'react-router-dom';

function NGO() {
    let navigate = useNavigate();
    const renderFund=()=>{
        navigate(`/fundraiser`)
        
    }
    const renderEvent=()=>{
        navigate(`/event`)
    }
    const renderCollab=()=>{
      navigate(`/colab`)
  }
  return (
    <div className='container row justify-content-center'>
      <div className="container col-xxl-8 px-4 py-5">
    <div className="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div className="col-10 col-sm-8 col-lg-6">
        <img src={ngoimg} className="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy"/>
      </div>
      <div className="col-lg-6">
        <h1 className="display-5 fw-bold lh-1 mb-3">Little Hopes</h1>
        <p className="lead">
Little Hopes is an organization in India based in Mumbai. Established in 1920, we have worked extensively for more than three 3 decades to reach out and rehabilitate differently able people from the underprivileged segment. Narayan Seva Sansthan works with 480 branches in India and 49 branches abroad while focusing on alleviating disabilities and providing proper Physical, Social, and Economic Rehabilitation to the needy. We do this through well-planned and comprehensive programs in health, education, rehabilitation, corrective surgeries, and helping aid distribution making us the best charity organization in India.</p>
      </div>
    </div>
  </div>
  <h1 className="container row justify-content-center">Start A Event</h1>
  <div className="container row justify-content-between">
    <div className="col-md-4">
        <div className="h-100 p-5  border rounded-3">
        <div className="d-flex justify-content-center"> <i className="fa-solid fa-handshake-angle fa-2xl"></i></div>
        
          <h2  className="mt-3 d-flex justify-content-center">Fund Raise</h2>
          <p>Start a Fundraise for needy</p>
          <button className="btn btn-outline-secondary container" type="button" onClick={renderFund}>Raise Funds</button>
        </div>
      </div>
      <div className="col-md-4">
        <div className="h-100 p-5 bg border rounded-3">
        <div className="d-flex justify-content-center"><i className="fa-solid fa-calendar-days fa-2xl"></i></div>
        
          <h2 className="mt-3 d-flex justify-content-center">Create Event</h2>
          <p>Create a Event for NGO</p>
          <button className="btn btn-outline-secondary container " type="button" onClick={renderEvent} >Create Event</button>
        </div>
      </div>   
      <div className="col-md-4">
        <div className="h-100 p-5 bg border rounded-3">
        <div className="d-flex justify-content-center"><i className="fa-solid fa-user-group fa-2xl"></i></div>
        
          <h2 className="mt-3 d-flex justify-content-center">Collaborate</h2>
          <p>Collaborate with other NGOs </p>
          <button className="btn btn-outline-secondary container " type="button" onClick={renderCollab} >Collaborate</button>
        </div>
      </div>    

  </div>
    </div>
  )
}
 export default NGO;