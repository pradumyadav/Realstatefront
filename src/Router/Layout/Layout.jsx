
        import { Outlet } from "react-router-dom"
import "./Layout.scss"
    import Navbar from "../../Components/navbar/Navbar" ;
    
       export default function Layout (){

            return(

               <div className='layout'>
            <div className='navbar'>
           <Navbar/>
            </div>
                 
            <div className='content'>

                <Outlet/>
                
            </div>
         
        </div>
            );
        }