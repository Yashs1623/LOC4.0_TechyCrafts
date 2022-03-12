import React from 'react';
import "../App.css"
import AliceCarousel from 'react-alice-carousel';
import "react-alice-carousel/lib/alice-carousel.css";
import image1 from "../images/ngo_img2.jpg"
import image2 from "../images/ngo_img3.jpg"
import image3 from "../images/ngo_img4.jpg"
function Slider(){
    return(
        <div className="App">
        <AliceCarousel autoPlay autoPlayInterval="3000">
      <img src={image1} className="sliderimg"/>
      <img src={image2} className="sliderimg"/>
      <img src={image3} className="sliderimg"/>
      
</AliceCarousel>
        </div>
    );
}
export default Slider;