import React from 'react'
import ngoimg from '../images/ngoimg.jpg'

function NGO() {
  return (
    <div className='container row justify-content-center'>
      <div className="container col-xxl-8 px-4 py-5">
    <div className="row flex-lg-row-reverse align-items-center g-5 py-5">
      <div className="col-10 col-sm-8 col-lg-6">
        <img src={ngoimg} className="d-block mx-lg-auto img-fluid" alt="Bootstrap Themes" width="700" height="500" loading="lazy"/>
      </div>
      <div className="col-lg-6">
        <h1 className="display-5 fw-bold lh-1 mb-3">NGO NAME</h1>
        <p className="lead">Quickly design and customize responsive mobile-first sites with Bootstrap, the world's most popular front-end open source toolkit, featuring Sass variables and mixins, responsive grid system, extensive prebuilt components, and powerful JavaScript plugins.</p>
      </div>
    </div>
  </div>
  <h1 className="container row justify-content-center">Start A Event</h1>
  <div className="container row justify-content-between">
    <div className="col-md-5">
        <div className="h-100 p-5  border rounded-3">
        <div className="d-flex justify-content-center"> <i className="fa-solid fa-handshake-angle fa-2xl"></i></div>
        
          <h2  className="mt-3 d-flex justify-content-center">Add borders</h2>
          <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>
          <button className="btn btn-outline-secondary container" type="button">Example button</button>
        </div>
      </div>
      <div className="col-md-5">
        <div className="h-100 p-5 bg border rounded-3">
        <div className="d-flex justify-content-center"><i className="fa-solid fa-calendar-days fa-2xl"></i></div>
        
          <h2 className="mt-3 d-flex justify-content-center">Add borders</h2>
          <p>Or, keep it light and add a border for some added definition to the boundaries of your content. Be sure to look under the hood at the source HTML here as we've adjusted the alignment and sizing of both column's content for equal-height.</p>
          <button className="btn btn-outline-secondary container " type="button">Example button</button>
        </div>
      </div>      

  </div>
    </div>
  )
}

export default NGO
