/*========================================================================================================
    Designation : Box
    Created on  : 21 December 2018
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/


camera {
  sky <0,0,1>
  location <30,0,5>
  look_at <0,0,2>
  angle 15
}

light_source { <10,10,10>  color rgb<1,1,1> }

background { color rgb<1,1,1>}

box{ <-1,-1,0>, <1,1,4> 
     texture {pigment{ color rgbf<1,0,0, 0.9>}} 
     finish {phong  2 metallic diffuse 1 ambient 0} 
     rotate z*15
   }


