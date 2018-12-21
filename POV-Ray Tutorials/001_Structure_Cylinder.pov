/*========================================================================================================
    Designation : Cylinder
    Created on  : 21 December 2018
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/


camera {
          sky <0,0,1>
          location <50,0,0.1>
          look_at <0,0,2>
          angle 20
       }

light_source { <10,10,10>  color rgb<1,1,1> }

background { color rgb<1,1,1>}

plane { <0,0,1>, 0 texture {pigment{ color rgb<0.9,0.9,0.9>}}}

cylinder { <0,0,-2> 
           <0,0,5>, 1 
           texture {pigment{ color rgbf<1,0,0, 0.1>}} 
           finish {phong  1 metallic diffuse 1 ambient 0}
         }
         
