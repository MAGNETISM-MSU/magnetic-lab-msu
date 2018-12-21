/*========================================================================================================
    Designation : HCP unit cell structure 
    Created on  : 21 December 2018
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/


#include "colors.inc"

camera {
  sky <0,0,1>
  location <30,-8,10>
  look_at <0,0,-0.6>
  angle 35
}

light_source {
  <40,-20,15>
  color rgb<1.0,1.0,1.0>
}

background { color rgb<1.0,1.0,1.0>}



#macro line (cx1,cy1,cz1 cx2,cy2,cz2)
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.05 
           texture {pigment{ color Gray60}} 
           finish {phong  2 metallic diffuse 1.3 ambient 0}
           rotate z*0 no_shadow 
         }
#end

//top lines
line (2.5,1.5,3, -2.5,-1.5,3)
line (-2.5,1.5,3, 2.5,-1.5,3)

line (0,3,3, 2.5,1.5,3)
line (2.5,1.5,3, 2.5,-1.5,3)
line (2.5,-1.5,3, 0,-3,3)
line (0,-3,3, -2.5,-1.5,3)
line (-2.5,-1.5,3, -2.5,1.5,3)
line (-2.5,1.5,3, 0,3,3)

//middle lines
line (2.5,0,0, -1.2,2.2,0)
line (-1.2,2.2,0, -1.2,-2.2,0)
line (-1.2,-2.2,0, 2.5,0,0)

//bottom lines
line (2.5,1.5,-3, -2.5,-1.5,-3)
line (-2.5,1.5,-3, 2.5,-1.5,-3)

line (0,3,-3, 2.5,1.5,-3)
line (2.5,1.5,-3, 2.5,-1.5,-3)
line (2.5,-1.5,-3, 0,-3,-3)
line (0,-3,-3, -2.5,-1.5,-3)
line (-2.5,-1.5,-3, -2.5,1.5,-3)
line (-2.5,1.5,-3, 0,3,-3)

//z
line (0,3,3, 0,3,-3)
line (0,-3,3, 0,-3,-3)
line (2.5,1.5,3, 2.5,1.5,-3)
line (-2.5,1.5,3, -2.5,1.5,-3)
line (-2.5,-1.5,3, -2.5,-1.5,-3)
line (2.5,-1.5,3, 2.5,-1.5,-3)

//atomic cells
#macro a (cx3,cy3,cz3)
sphere { <cx3,cy3,cz3>, 0.52  
         texture {pigment{ color Gold}} 
         finish {reflection 0.01 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2} 
         rotate z*0 no_shadow 
        }
#end

//top
a (0,0,3)
a (0,3,3)
a (0,-3,3)
a (2.5,-1.5,3)
a (-2.5,1.5,3)
a (2.5,1.5,3)
a (-2.5,-1.5,3)

//middle
a (2.5,0,0)
a (-1.2,2.2,0)
a (-1.2,-2.2,0)

//bottom
a (0,0,-3)
a (0,3,-3)
a (0,-3,-3)
a (2.5,-1.5,-3)
a (-2.5,1.5,-3)
a (2.5,1.5,-3)
a (-2.5,-1.5,-3)

polygon
      {  3, <2.5,0,0> <-1.2,2.2,0> <-1.2,-2.2,0>     
          texture {pigment{ color rgbf<0.8,0.8,0.8, 0.9>}} 
          finish {phong 1 metallic diffuse 1.3 ambient 3}}  
    
prism {  -3,3,6, <0,3> <2.5,1.5> <2.5,-1.5> <0,-3> <-2.5,-1.5> <-2.5,1.5> 
         texture {pigment{ color rgbf<0.8,0.8,0.8, 0.9>}} 
         finish {phong 1 metallic diffuse 1.3 ambient 3} 
         rotate z*0 rotate x*-270 no_shadow }
      
      
      
