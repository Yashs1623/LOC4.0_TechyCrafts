import React from 'react'
import { useNavigate } from 'react-router-dom'
import landingimg from '../images/landing.jpg'

function Landing() {
  const navigate=useNavigate();
  const renderUserSignin=()=>{
    navigate("/signup_user")
  }
  const renderNGOSignup=()=>{
    navigate("/signup")
  }
  return (
      <div className="d-inline-block w-100 h-100 " style={{margin:"0px"}} >
    <div className='d-flex justify-content-around'>
        <div className='d-flex align-items-center ' >
            <img src={landingimg} style={{width:"550px",height:"400px"}} alt="" className='rounded float-left' />
        </div>
        <div className='' >
        <div className="px-4 py-5 my-5 text-center">
    <h1 className="display-5 fw-bold">Select Your Role</h1>
    <div className="col-lg-6 mx-auto">
      <p className="lead mb-4">As a NGO you have features which help your ngo reach other people/NGOs </p>
      <p className="lead mb-4">A an User you have features which give you information of Upcoming Events </p>
      <div className="d-grid gap-2 d-sm-flex justify-content-sm-center">
        <button type="button" className="btn container btn-primary-c  px-4 " onClick={renderUserSignin} >User</button>
        <button type="button" className="btn container btn-primary-c  px-4" onClick={renderNGOSignup}>NGO</button>
      </div>
    </div>
  </div>
        </div>
      
    </div>
    </div>
  )
}

export default Landing
