



import HomePage from './Router/HomePage/HomePage';
import {
    createBrowserRouter,
    RouterProvider,
    
  } from "react-router-dom"; 

import ListFolder from './Router/ListFolder/ListFolder';
import Layout from './Router/Layout/Layout';
import SinglePage from './Router/SinglePage/SinglePage';

export default function App (){
    const router =createBrowserRouter([
        {
            path :"/",
            element :<Layout/>,
            children:[
                {
                    path:"/",
                    element:<HomePage/>
                },
                {
                    path:"/list",
                    element:<ListFolder/>
                },
                {
                    path:"/:id",
                    element:<SinglePage/> 
                },
                
            ]
        },
       
    ])
    return(
       

        <RouterProvider router={router}/>
        
    )
 }  