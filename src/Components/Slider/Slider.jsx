import "./Slider.scss";
import arrow from "../../../src/Asset/arrow.png"
export default function Slider({ images }) {
    return (
        <>
            <div className="slider">
                <div className="fullSlider">
                    <div className="arrow">
                        <img src={arrow} alt=""/>
                    </div>
                    <div className="imgContainer">
                        <img src={images[0]} alt=""/>
                    </div>
                    <div className="arrow">
                    <img src={arrow} alt="" className="right"/>
                    </div>
                    <div className="close">X</div>
                </div>
                <div className="bigImage">
                    <img src={images[0]} alt="" />
                </div>
                <div className="smallImages">
                    {images.slice(1).map((image, index) => (
                        <img src={image} alt="" key={index} />
                    ))}
                </div>
            </div>
        </>
    );
}
