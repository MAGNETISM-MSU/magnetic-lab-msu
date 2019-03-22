camera {
  sky <0,0,1>
  location <80,0,38>
  look_at <0,5,0>
  angle 40
}

light_source {
  <180,-85,80>
  color rgb<1.0,1.0,1.0>
}

background { color rgb<1.0,1.0,1.0>}


#macro boxes (bx,by,bz, bx1,by1,bz1, rx,ry,rz,rf)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color rgbf<rx,ry,rz,rf>}} finish {phong  2 metallic diffuse 1.3 ambient 0}
    rotate z*25    // Equivalent to "rotate <0,20,0>"--
    no_shadow}
#end

boxes (-30,-12,0, 23.5,14.5,5,  0.8,0.8,0.8, 1 )
boxes (-30,-12,5, 23.5,14.5,7,   1.2,1.1,0.7, 0.9)
boxes (-30,-12,7, 23.5,14.5,12,  0.8,0.8,0.8, 1)
boxes (-30,-12,12, 23.5,14.5,12.5,  0.95,0.8,0.8, 1)

#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2, cx3,cy3,cz3, rx,ry,rz)
cone { <cx,cy,cz>, 0
         <cx1,cy1,cz1>, 1
         texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow }
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.5 texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0}rotate z*25 no_shadow}
sphere { <cx3,cy3,cz3>, 1.25  texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow}
sphere { <cx2,cy2,cz2>, 0.5  texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow} 

#end

arrow(-24,0,5,  -24,0,7, -24,0,11, -24,0,9, 0,0,1)
arrow(-18.2,0,6,  -17,0,7.7, -14.5,0,11, -16,0,9, 0.5,0.5,1)
arrow(-11.7,0,7.0,  -9.5,0,8.0, -5.7,0,10.1, -8,0,9, 0.8,0.8,1)
arrow(-4,0,9,  -1.7,0,9,   2.5,0,9,   0,0,9, 0.9,0.9,0.9)
arrow(5.2,0,11.7,  6.8,0,10.1, 9.5,0,7.5, 8,0,9, 1,0.8,0.8)
arrow(13,0,12.7,  13.5,0,10.7, 14.7,0,7, 14,0,9, 1,0.5,0.5)
arrow(20,0,13,  20,0,11, 20,0,7, 20,0,9, 1,0,0)
       
text { ttf "Calibri.ttf", "PL",0.06,0
       scale 2.5 rotate <270,180,90> translate <23.1, 13, 1.8> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}

text { ttf "Calibri.ttf", "SL",0.06,0
       scale 2.5 rotate <270,180,90> translate <23.1, 13, 5.1> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}
       
text { ttf "Calibri.ttf", "FL",0.06,0
       scale 2.5 rotate <270,180,90> translate <23.1, 13, 8.5> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}
text { ttf "Calibri.ttf", "MgO",0.06,0
       scale 2.5 rotate <270,180,90> translate <23.1, 13, 12.5> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}

       
//xyz
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2)
cone { <cx,cy,cz>, 0
         <cx1,cy1,cz1>, 0.5
         texture {pigment{ color rgbf<0.2,0.2,0.2, 0>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow}
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.2 texture {pigment{ color rgbf<0.2,0.2,0.2, 0>}} finish {phong  2 metallic diffuse 1 ambient 0}rotate z*25 no_shadow}
sphere { <cx2,cy2,cz2>, 0.2  texture {pigment{ color rgbf<0.2,0.2,0.2, 0>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow} 
#end

arrow(23.5,-12,4.5,  23.5,-12,3, 23.5,-12,-0) //z
arrow(23.5,-7.6,0,  23.5,-9,0, 23.5,-12,-0)   //y
arrow(17.6,-12,0,  19.7,-12,0, 23.5,-12,-0)   //x

text { ttf "Calibri.ttf", "y",0.05,0
       scale 2 rotate <270,180,90> translate <24.3, -7, 0> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*25}
text { ttf "Calibri.ttf", "z",0.05,0
       scale 2 rotate <270,180,90> translate <24.3, -12, 5.5> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*25}
text { ttf "Calibri.ttf", "x",0.05,0
       scale 2 rotate <270,180,90> translate <17, -12, 0> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*25}


//Spin Current
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2)
cone { <cx,cy,cz>, 0
         <cx1,cy1,cz1>, 1.7
         texture {pigment{ color rgbf<1.2,0.5,0.1, 0>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow}
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.95 texture {pigment{ color rgbf<1.2,0.5,0.1, 0>}} finish {phong  2 metallic diffuse 1 ambient 0}rotate z*25 no_shadow}
sphere { <cx2,cy2,cz2>, 0.95  texture {pigment{ color rgbf<1.2,0.5,0.1, 0>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow} 
#end

arrow(10,9,-8,  10,9,-13, 10,9,-23)


text { ttf "Calibri.ttf", "j",0.05,0
       scale 5 rotate <270,180,90> translate <23, 5, -5> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*25}
text { ttf "Calibri.ttf", "e",0.05,0
       scale 3 rotate <270,180,90> translate <23, 4.5, -5> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}
       
