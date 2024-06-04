        import { useState } from "react";
import "./SearchBar.scss" ;
import img from "../../../src/Asset/search (1).png"
        const types =["Buy","Rent"]
       export default function SearchBar (){
            const[query,setQuery]=useState({
                type:"buy",
                location:"",
                minprice:0,
                maxprice:0
            })
       
            const switchType=(val)=>{
                setQuery((prv)=>({...prv,type:val}))
            };

            return(

                <div className="SearchBar">
                  <div className="type">
                    {
                        types.map((type)=>{
                            return(

                                <button key={type} onClick={()=>switchType(type)} 
                                className={query.type===type ?"active":""}>
                                    {type}
                                    </button>
                            )
                        })
                    }
                       
                  </div>
                  
                  <form>
                    <input  type="text" name="location" placeholder="City Location"></input>
                    <input 
                    type="number"
                     name="minprice" 
                     min={0} 
                     max={1000000}
                      placeholder="Min Price"> 
                    </input>
                    <input 
                    type="number" 
                    name="maxprice" 
                    min={0} 
                    max={1000000} 
                    placeholder="Max Price"> 
                     </input>
                     <button>
                        <img src={img} alt=""></img>
                     </button>
                  </form>
                </div>
            )
         }