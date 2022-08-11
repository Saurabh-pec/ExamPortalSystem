
 import style from "./Home.module.css";
 import pic1 from "../../images/1.png";
 import pic2 from "../../images/4.jpg";
 import pic3 from "../../images/5.png";

 import {NavLink} from "react-router-dom";


    
    function Home(){
        return(
            <>
               <div id={style.header}>
                   <div id={style.headerHeadingBox}>
                        <h3 color="black" >WELCOME TO OUR EXAMINATION PORTAL</h3> 
                        
                    </div>
                    <div id={style.div2}>
            
                  <div className ={style.div3}>
                     <NavLink exact  to="/StudentLogin">
                        {/* <img src={pic2} alt="" /> */}
                        <span>Student Login</span>
                     </NavLink>
                  </div>

                  <div  className ={style.div3}>
                    <NavLink  to="/AdminLogin">
                       {/* <img src={pic3} alt="" /> */}
                       <span>Admin Login</span>
                     </NavLink> 
                  </div>
                
              </div>

                </div>

              <div id={style.div1}>
                  {/* <img src={pic1} alt="" /> */}
                  <span>“Self-belief and hard work will always earn you success.”</span><br></br>
                  <span>“Efforts and courage are not enough without purpose and direction.”</span><br></br>
                  <span>“Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going.”</span>
              </div>


              

             

            </>
        );
    }

     

    export default Home;