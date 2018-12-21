//==================================================================================================
       Designation : Silver ball
       Created on  : 21 December 2018
       Author      : Wassana Daeng-am
       Location    : Computational magnetism group, Mahasarakham university, Thailand, 44150
====================================================================================================//


//Call software packages
#include "colors.inc"
#include "metals.inc"
#include "screen.inc"

//Set up camera aspect
camera {
  sky <0,0,1>
  location <40,0,0>
  look_at <0,0,0>
  angle 15
}

//Define the location and color of light
light_source {
  <50,30,25>
  color rgb<1.0,1.0,1.0>}

//Set up background
background { color rgb<1,1,1>}

//Group the objects
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2, cx3,cy3,cz3)
merge  {
cone   { <cx,cy,cz>, 0
         <cx1,cy1,cz1>, 0.4  }
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.2  }
sphere   { <cx3,cy3,cz3>, 1.8 }
sphere   { <cx2,cy2,cz2>, 0.2 }
texture  { pigment {color rgb Silver} 
           finish {reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2
           } //finish
          } //texture
         } //merge
#end

arrow(0,0,1.5,  0,0,0.6,  0,0,-1.2,  0,0,0)




