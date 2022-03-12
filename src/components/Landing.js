import React from 'react'
import landingimg from '../images/landing.jpg'

function Landing() {
  return (
      <div className="d-inline-block w-100 h-100 " style={{margin:"0px"}} >
    <div className='d-flex justify-content-around'>
        <div className='d-flex align-items-center ' >
            <img src={landingimg} style={{width:"550px",height:"400px"}} alt="" className='rounded float-left' />
        </div>
        <div className='' >
        <div className="px-4 py-5 my-5 text-center">
    <h1 className="display-5 fw-bold">Select Your Preference </h1>
    <div className="col-lg-6 mx-auto">
      <p className="lead mb-4">Choose your role by clicking on button </p>
      <div className="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <button type="button" className="btn btn-outline-secondary btn-lg px-4 gap-3">User</button>
        <button type="button" className="btn btn-outline-secondary btn-lg px-4">NGO</button>
      </div>
    </div>
  </div>
        </div>
      
    </div>
    </div>
  )
}

export default Landing
