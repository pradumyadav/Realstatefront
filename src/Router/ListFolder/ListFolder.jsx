import Card from "../../Components/Card/Card";
import Filter from "../../Components/Filter/Filter";
import Map from "../../Components/map/Map";
import { listData } from "../../Lib/dummydata"
import "./ListFolder.scss"

export default function ListFolder (){

    const data =listData ;
    return(
        <div className="ListFolder">

            <div className="listContainer">
                <div className="wrapper">
                    <Filter/>
                    {data.map((item)=>{
                        console.log(item)
                        return(
                            <Card key={item.id} item={item}/>
                        )
                    })}
                </div>
            </div>
            <div className="mapContainer">
               <Map items={data}/>
            </div>
        </div>
    )
}