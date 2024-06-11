import Slider from "../../Components/Slider/Slider";
import { singlePostData, userData } from "../../Lib/dummydata";
import "./SinglePage.scss";
import img from "../../../src/Asset/pin.png";

export default function SinglePage() {
    return (
        <div className="SinglePage">
            <div className="details">
                <div className="wrapper">
                    {/* <Slider images={singlePostData.images} /> */}
                    <div className="info">
                        <div className="top">
                            <div className="post">
                                <h1>{singlePostData.title}</h1>
                                <div className="address">
                                    <img src={img} alt="" />
                                    <span>{singlePostData.address}...</span>
                                </div>
                                <div className="price">$ {singlePostData.price}</div>
                            </div>
                            <div className="user">
                                <img src={userData.img} alt="" />
                                <span>{userData.name}</span>
                            </div>
                        </div>
                        <div className="bottom">
                            {singlePostData.description}
                        </div>
                    </div>
                </div>
            </div>
            <div className="features">
                <div className="wrapper"></div>
            </div>
        </div>
    );
}
