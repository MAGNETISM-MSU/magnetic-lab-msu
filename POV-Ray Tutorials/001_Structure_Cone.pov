/*========================================================================================================
    Designation : Cone
    Created on  : 21 December 2018
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/


camera {
         sky <0,0,1>
         location <30,0,1>
         look_at <0,0,2>
         angle 15
       }

light_source { <10,10,10>  color rgb<1,1,1> }

background { color rgb<1,1,1>}

plane { <0,0,1>, 0 
        texture {pigment{ color rgb<0.9,0.9,0.9>}}   
      }


cone  { <0,0,3>, 0
        <0,0,1>, 0.5 
        texture {pigment{ color rgb<1,0,0>}}   
      }



 
