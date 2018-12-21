/*========================================================================================================
    Designation : LMR
    Created on  : 21 December 2018
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/


#include "colors.inc"
#include "metals.inc"
#include "screen.inc"
#declare LX=0;
#declare LY=550;
#declare LZ=100;
#declare CX=3000;
#declare CY=0;
#declare CZ=1400;
#declare ref=0.4;
global_settings { assumed_gamma 2.0 }
background { color White }
Set_Camera(<CX,CY,CZ>, <LX,LY,LZ>, 30)
Set_Camera_Aspect(4,3)
Set_Camera_Sky(<0,0,1>)
light_source { <3000,3000,5000> color Gray90}
light_source { <13000,-13000,5000> color Gray70}

plane { <0,0,1>, -40 pigment { color White } finish { ambient 0 diffuse 0 reflection 1 } }

//soft underlayer
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    pigment { color White } finish { ambient 0 diffuse 0 reflection 1 } rotate z*7 scale<1,1,1>     
    }
#end
boxes (1,28,-40, -560,1200,-650)


//disk
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color rgbf<0.35,0.35,0.35, 0>}} finish {phong  2 metallic diffuse 1.3 ambient 0} rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (1,28,8, -560,1200,-40)

//write head
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color rgbf<0.1,0.1,0.1, 0>}} finish{reflection 0.1 specular 20 phong 0.6 phong_size 200 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 5 } rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (-30,180,30, -500,330,500)
boxes (-30,330,320, -500,700,500)
boxes (-30,700,30, -500,850,500)
boxes (-30,970,30, -500,1050,500)
boxes (-30,330,30, -500,370,100)
boxes (-30,660,30, -500,700,100)

//read head
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color Scarlet}} finish{reflection 0.2 specular 0.5 phong 0.5 phong_size 100 diffuse 2 ambient color<0.1,0.1,0.1> brilliance 2 } rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (-50,900,30, -490,940,400)

//bit lines
#macro line (cx1,cy1,cz1 cx2,cy2,cz2)
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 2.5 texture {pigment{ color White}} finish {phong  1 metallic diffuse 1.3 ambient 0} rotate z*7 }
#end
line (0,29,5, 0,1200,5)
line (-560,29,5, -560,1200,5)
line (-560,29,-40, -560,1200,-40)
line (0,29,5, -560,29,5)

line (0,310,7, -560,310,7)
line (0,600,7, -560,600,7)
line (0,900,7, -560,900,7)
line (0,1200,7, -560,1200,7)

line (-560,29,5, -560,29,-40)
line (0,29,5, 0,29,-40)
line (0,310,5, 0,310,-40)
line (0,600,5, 0,600,-40)
line (0,900,5, 0,900,-40)
line (0,1200,5, 0,1200,-40)

//solenoid
#macro lines (cx1,cy1,cz1 cx2,cy2,cz2)
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 20 texture {pigment{ color rgb <1.1,0.47,0.14>}} finish{reflection 0.3 specular 0.8 phong 0.5 phong_size 100 diffuse 1.8 ambient color<0.1,0.1,0.1> brilliance 2 }rotate z*7 }
#end
lines (-30,380,500, -500,400,500)
lines (-30,420,500, -500,440,500)
lines (-30,460,500, -500,480,500)
lines (-30,500,500, -500,520,500)
lines (-30,540,500, -500,560,500)
lines (-30,580,500, -500,600,500)
lines (-30,620,500, -500,640,500)

lines (-520,360,320, -500,360,600)

lines (-30,660,320, -30,660,600)

lines (-30,380,320, -30,380,500)
lines (-30,420,320, -30,420,500)
lines (-30,460,320, -30,460,500)
lines (-30,500,320, -30,500,500)
lines (-30,540,320, -30,540,500)
lines (-30,580,320, -30,580,500)
lines (-30,620,320, -30,620,500)

lines (-30,380,320, -500,360,320)
lines (-30,420,320, -500,400,320)
lines (-30,460,320, -500,440,320)
lines (-30,500,320, -500,480,320)
lines (-30,540,320, -500,520,320)
lines (-30,580,320, -500,560,320)
lines (-30,620,320, -500,600,320)
lines (-30,660,320, -500,640,320)

//reader
lines (-490,920,370, -490,920,600)
lines (-50,920,370, -50,920,600)

#macro ball (cx1,cy1,cz1)
sphere { <cx1,cy1,cz1> , 20 texture {pigment{ color rgb <1.1,0.47,0.14>}} finish{reflection 0.3 specular 0.8 phong 0.5 phong_size 100 diffuse 2 ambient color<0.1,0.1,0.1> brilliance 2 } rotate z*7 }
#end
ball (-30,620,500)
ball (-30,580,500)
ball (-30,540,500)
ball (-30,500,500)
ball (-30,460,500)
ball (-30,420,500)
ball (-30,380,500)

ball (-30,660,320)
ball (-30,620,320)
ball (-30,580,320)
ball (-30,540,320)
ball (-30,500,320)
ball (-30,460,320)
ball (-30,420,320)
ball (-30,380,320)

//reader
ball (-490,920,370)
ball (-50,920,370)

