/*========================================================================================================
    Designation : BCC unit cell structure 
    Created on  : 21 December 2018
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/


#include "colors.inc"

camera {
  sky <0,0,1>
  location <30,0,10>
  look_at <0,0,-0.6>
  angle 35
}

light_source {
  <40,-20,15>
  color rgb<1.0,1.0,1.0>
}

background { color rgb<1.0,1.0,1.0>}


#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color rgbf<0.8,0.8,0.8, 0.9>}} finish {phong 1 metallic diffuse 1.3 ambient 3}
    rotate z*16     // Equivalent to "rotate <0,20,0>"--
    }
#end


boxes (-2,-2,-2, 2,2,2)



#macro line (cx1,cy1,cz1 cx2,cy2,cz2)

cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.05 texture {pigment{ color Gray60}} finish {phong  2 metallic diffuse 1.3 ambient 0}rotate z*16 no_shadow }

#end

//line
line (2,2,2, 2,-2,2)
line (-2,2,2, -2,-2,2)
line (2,2,-2, 2,-2,-2)
line (-2,2,-2, -2,-2,-2)

line (-2,-2,2, 2,-2,2)
line (-2,-2,-2, 2,-2,-2)
line (2,2,2, -2,2,2)
line (2,2,-2, -2,2,-2)

line (2,2,-2, 2,2,2)
line (-2,2,-2, -2,2,2)
line (2,-2,-2, 2,-2,2)
line (-2,-2,-2, -2,-2,2)


//atomic cell
#macro a (cx3,cy3,cz3)

sphere { <cx3,cy3,cz3>, 0.52  texture {pigment{ color Gold}} finish {reflection 0.01 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2 } rotate z*16 no_shadow }

#end

a (0,0,0)
a (2,2,2)
a (-2,2,2)
a (2,-2,2)
a (-2,-2,2)
a (2,2,-2)
a (-2,2,-2)
a (2,-2,-2)
a (-2,-2,-2)

