
import "./HomePage.scss" ;
import img from "../../Asset/bg.png"
import SearchBar from "../../Components/SearchBar/SearchBar";
export default function HomePage (){
    return(
        <div className="homePage">
           <div className="textContainer">
            <div className="wrapper">
                <h1 className="title">
                    Find Real Estate & Your Dream Place
                </h1>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. 
                    Minima ut quo, consectetur porro a eligendi eius eveniet 
                    dignissimos, sit officiis mollitia iste architecto. Cons
                    ectetur quas vel cupiditate !
                </p>
                <SearchBar/>
                <div className="boxes">
                    <div className="box">
                        <h1>16+</h1>
                        <h2>Years of Expirence</h2>
                    </div>
                    <div  className="box">
                        <h1>200+</h1>
                        <h2>Award Gained</h2>
                    </div>
                    <div  className="box">
                        <h1>2000+</h1>
                        <h2>Property Ready</h2>
                    </div>
                </div>
            </div>
           </div>

           <div className="imgContainer">
            <img src={img} alt="Image"></img>
           </div>
        </div>
    )
}