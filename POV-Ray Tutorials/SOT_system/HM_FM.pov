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

boxes (-30,-12,0, 23.5,14.5,5,   1.1,1,0.8, 1)
boxes (-30,-12,5, 23.5,14.5,10,  0.8,0.8,0.8, 0.9)


#declare f=5;


#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2, cx3,cy3,cz3, rx,ry,rz)
cone { <cx,cy,cz-f>, 0
         <cx1,cy1,cz1-f>, 1
         texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow }
cylinder { <cx1,cy1,cz1-f> <cx2,cy2,cz2-f>, 0.5 texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0}rotate z*25 no_shadow}
sphere { <cx3,cy3,cz3-f>, 1.25  texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow}
sphere { <cx2,cy2,cz2-f>, 0.5  texture {pigment{ color rgbf< rx,ry,rz, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow} 

#end

arrow(-24,-4,12,  -24,-2,12, -24,2,12, -24,0,12, 0,0,1)
arrow(-14.2,-4,12,  -15.1,-2,12, -17,2,12, -16,0,12, 0.5,0.5,1)
arrow(-3.8,-2.7,12,  -6,-1.3,12, -10.5,1.8,12, -8,0,12, 0.8,0.8,1)
arrow(5,0.5,12,  2.9,0.2,12, -2.7,-0.1,12, 0,0,12, 0.9,0.9,0.9)
arrow(10.9,2.4,12,  9.4,1.2,12, 6.3,-1.2,12, 8,0,12, 1,0.8,0.8)
arrow(15.7,3.6,12,  14.9,1.7,12, 13,-1.8,12, 14,0,12, 1,0.5,0.5)
arrow(20,4,12,  20,2,12, 20,-2,12, 20,0,12, 1,0,0)
 
text { ttf "Calibri.ttf", "HM",0.06,0
       scale 2.5 rotate <270,180,90> translate <23.1, 13, 2> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}
text { ttf "Calibri.ttf", "FM",0.06,0
       scale 2.5 rotate <270,180,90> translate <23.3, 13, 6.5> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}


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
         <cx1,cy1,cz1>, 1.3
         texture {pigment{ color rgbf<1.2,0.5,0.1, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow}
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 0.65 texture {pigment{ color rgbf<1.2,0.5,0.1, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0}rotate z*25 no_shadow }
sphere { <cx2,cy2,cz2>, 0.65  texture {pigment{ color rgbf<1.2,0.5,0.1, 0.1>}} finish {phong  2 metallic diffuse 1 ambient 0} rotate z*25 no_shadow} 
#end

arrow(26,-1,4,  29,-1,4, 38,-1,4)


text { ttf "Calibri.ttf", "j",0.05,0
       scale 5 rotate <270,180,90> translate <33, -0.9, 0> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*25}  
text { ttf "Calibri.ttf", "e",0.05,0
       scale 3 rotate <270,180,90> translate <33, -1, 0> pigment{ color rgbf<0,0,0, 0.5> } no_shadow rotate z*23}



