
import "./Map.scss" ;
import "leaflet/dist/leaflet.css"
import {MapContainer,TileLayer} from 'react-leaflet'
import Pin from "../Pin/Pin";
export default function Map ({items}){

    return(
<MapContainer center={ [21.3701, 74.2403]} zoom={7} scrollWheelZoom={false} className="map">
    <TileLayer
      attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
      url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
    />
   {items.map(item=>(
    <Pin item={item} key={item.id}/>
   ))}
  </MapContainer>     
)
}