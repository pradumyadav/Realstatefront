

import './Layout.scss';

import Navbar from './Components/navbar/Navbar';
import HomePage from './Router/HomePage/HomePage';
export default function App (){
    return(
        <div className='layout'>
            <div className='navbar'>
           <Navbar/>
            </div>

            <div className='content'>

                <HomePage/>
                
            </div>
         
        </div>
        
    )
 }  