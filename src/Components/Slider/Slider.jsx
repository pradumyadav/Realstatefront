import "./Slider.scss";
import arrow from "../../../src/Asset/arrow.png";
import { useState } from "react";

export default function Slider({ images }) {

        const[imageIndex, setImageIndex]=useState(null);
    return (
        <>
            <div className="slider">
               {imageIndex===null && (<div className="fullSlider">
                    {/* <div className="arrow">
                        <img src={arrow} alt=""/>
                    </div> */}
                    <div className="imgContainer">
                        <img src={images[0]} alt="Main Image"/> </div>
                    {/* <div className="arrow">
                        <img src={arrow} alt="Right Arrow" className="right"/>
                    </div>
                    <div className="close">X</div> */}
                </div>)}
                <div className="bigImage">
        const[imageIndex, setImageIndex]=useState(null);
        const[imageIndex, setImageIndex]=useState(null);
                    <img src={images[imageIndex]} alt="Big Image" onClick={()=>setImageIndex(0)}/>
                </div>
                <div className="smallImages">
                    {images.slice(1).map((image, index) => (
                        <img src={image} alt={`Thumbnail ${index}`} key={index} onClick={()=>setImageIndex(index)}/>
                    ))}
                </div>
            </div>
        </>
    );
}
 