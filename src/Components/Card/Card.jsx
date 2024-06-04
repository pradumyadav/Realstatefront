
    import { Link } from "react-router-dom";
import "./Card.scss";
import img from "../../../src/Asset/pin.png";
import img1 from "../../../src/Asset/bed.png";
import img2 from "../../../src/Asset/bath.png";
import img3 from "../../../src/Asset/save.png";

import img4 from "../../../src/Asset/chat.png";

   export default function Card ({item}){
    return(
        <div className="card">
            <Link to={`${item.id}`}className="imageContainer">
                <img src={item.img} alt=""/>
            </Link>
            <div className="textContainer">

                <h2 className="title"> <Link to={`${item.id}`}>{item.title}</Link></h2>
                <p className="address">
                    <img src={img} alt=""></img>
                    <span>{item.address}</span>
                </p>
                <p className="price">$ {item.price}</p>
                <div className="bottom">
                    <div className="features">
                        <div className="feature">
                            <img src={img1} alt=""></img>
                            <span>{item.bedroom} bedroom</span>
                        </div>
                        <div className="feature">
                            <img src={img2} alt=""></img>
                            <span>{item.bathroom} bathroom</span>
                        </div>
                    </div>
                    <div className="icons">
                        <div className="icon">
                            <img src={img3} alt=""></img>
                        </div>
                        <div className="icon">
                        <img src={img4} alt=""></img>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    )
    }