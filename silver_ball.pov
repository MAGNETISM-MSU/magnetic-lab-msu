#include "colors.inc"
#include "metals.inc"
#include "screen.inc"

camera {
  sky <0,0,1>
  location <40,0,0>
  look_at <0,0,0>
  angle 15
}


light_source {
  <50,30,25>
  color rgb<1.0,1.0,1.0>}

background { color rgb<1.0,1.0,1.0>}

//plane { <0,0,1>, 0 texture {pigment{ color rgbf<1,1,1, 0.0>}}   }

#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2, cx3,cy3,cz3)
merge{
cone { <cx,cy,cz>, 0
         <cx1,cy1,cz1>, 0.4  }
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.2  }
sphere { <cx3,cy3,cz3>, 1.8 }
sphere { <cx2,cy2,cz2>, 0.2 }
texture {pigment{color rgb Silver} finish{reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2 }}} 
#end
arrow(0,0,1.5,  0,0,0.6,  0,0,-1.2,  0,0,0)

