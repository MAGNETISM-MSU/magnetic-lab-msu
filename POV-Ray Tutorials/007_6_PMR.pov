/*========================================================================================================
    Designation : PMR
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
Set_Camera(<CX,CY,CZ>, <LX,LY,LZ>, 35)
Set_Camera_Aspect(4,3)
Set_Camera_Sky(<0,0,1>)
light_source { <3000,3000,5000> color Gray90}
light_source { <13000,-13000,5000> color Gray70}

//plane { <0,0,1>, -40 pigment { color White } finish { ambient 0 diffuse 0 reflection 1 } }

#declare sscale0=2.0;
#declare rscale0=1.2;
#declare cscale0=3.54;
#declare cones0=0;
#declare arrows0=1;
#declare spheres0=1;
#declare cubes0=0;
#declare spincolors0=1;
#declare spincolor0=pigment {color rgb < 0.1 0.1 0.1 >};
#macro spinm0(cx,cy,cz,sx,sy,sz, cr,cg,cb)
union{
#if(spheres0) sphere {<cx,cy,cz>,1.7*rscale0} #end
#if(cubes0) box {<cx-cscale0*0.5,cy-cscale0*0.5,cz-cscale0*0.5>,<cx+cscale0*0.5,cy+cscale0*0.5,cz+cscale0*0.5>} #end
#if(cones0) cone {<cx+0.5*sx*sscale0,cy+0.5*sy*sscale0,cz+0.5*sz*sscale0>,0.0 <cx-0.5*sx*sscale0,cy-0.5*sy*sscale0,cz-0.5*sz*sscale0>,sscale0*0.5} #end
#if(arrows0) cylinder {<cx+sx*0.5*sscale0,cy+sy*0.5*sscale0,cz+sz*0.5*sscale0>,<cx-sx*0.5*sscale0,cy-sy*0.5*sscale0,cz-sz*0.5*sscale0>,sscale0*0.12}cone {<cx+sx*0.5*1.6*sscale0,cy+sy*0.5*1.6*sscale0,cz+sz*0.5*1.6*sscale0>,sscale0*0.0 <cx+sx*0.5*sscale0,cy+sy*0.5*sscale0,cz+sz*0.5*sscale0>,sscale0*0.2} #end
#if(spincolors0) texture { pigment {color Gray90}finish{reflection 0.01 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2 }}
#else texture { spincolor0 finish {reflection {ref} diffuse 1 ambient 0}} #end
rotate z*97
}
#end
#include "atoms-00000000.inc"


// //soft underlayer
// #macro boxes (bx,by,bz, bx1,by1,bz1)
// box { <bx,by,bz>
// 	<bx1,by1,bz1>
//     pigment { color rgbf <0.9,0.9,1.1,0.8> } finish {phong  2 metallic diffuse 1.3 ambient 0} rotate z*7 scale<1,1,1>     
//     }
// #end
// 
// boxes (1,28,8, -560,1200,700)

//disk
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color rgbf<0.35,0.35,0.35, 0>}} 
    finish {phong  2 metallic diffuse 1.3 ambient 0} 
    rotate z*7 // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (1,28,8, -560,1200,-87)

//write head
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	<bx1,by1,bz1>
    texture {pigment{ color rgbf<0.1,0.1,0.1, 0>}} finish{reflection 0.1 specular 20 phong 0.6 phong_size 200 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 5 } rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (-30,130,30, -500,220,500)
boxes (-30,220,320, -500,570,500)
boxes (-30,570,30, -500,850,500)
boxes (-30,970,30, -500,1050,500)

//read head
#macro boxes (bx,by,bz, bx1,by1,bz1)
box { <bx,by,bz>
	  <bx1,by1,bz1>
      texture {pigment{ color Scarlet}} 
      finish{reflection 0.2 specular 0.5 phong 0.5 phong_size 100 diffuse 2 ambient color<0.1,0.1,0.1> brilliance 2 } 
      rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (-50,900,30, -490,940,400)

//bits
#macro line (cx1,cy1,cz1 cx2,cy2,cz2)
cylinder { <cx1,cy1,cz1> 
           <cx2,cy2,cz2>, 2.5 
           texture {pigment{ color White}} 
           finish {phong  1 metallic diffuse 1.3 ambient 0} 
           rotate z*7 }
#end
line (0,29,5, 0,1200,5)
line (0,29,-87, 0,1200,-87)
line (-560,29,5, -560,1200,5)
line (-560,29,-87, -560,1200,-87)

line (0,29,5, -560,29,5)
line (0,29,-87, -560,29,-87)

line (0,210,7, -560,210,7)
line (0,400,7, -560,400,7)
line (0,600,7, -560,600,7)
line (0,800,7, -560,800,7)
line (0,1000,7, -560,1000,7)
line (0,1200,7, -560,1200,7)

line (-560,29,5, -560,29,-87)
line (0,29,5, 0,29,-87)
line (0,210,5, 0,210,-87)
line (0,400,5, 0,400,-87)
line (0,600,5, 0,600,-87)
line (0,800,5, 0,800,-87)
line (0,1000,5, 0,1000,-87)
line (0,1200,5, 0,1200,-87)

//solenoid
#macro lines (cx1,cy1,cz1 cx2,cy2,cz2)

cylinder { <cx1,cy1,cz1> 
           <cx2,cy2,cz2>, 20 
           texture {pigment{ color rgb <1.1,0.47,0.14>}} 
           finish{reflection 0.3 specular 0.8 phong 0.5 phong_size 100 diffuse 1.8 ambient color<0.1,0.1,0.1> brilliance 2 }
           rotate z*7 }
#end
lines (-30,260,500, -500,280,500)
lines (-30,300,500, -500,320,500)
lines (-30,340,500, -500,360,500)
lines (-30,380,500, -500,400,500)
lines (-30,420,500, -500,440,500)
lines (-30,460,500, -500,480,500)
lines (-30,500,500, -500,520,500)

lines (-520,240,320, -500,240,600)
lines (-30,540,320, -30,540,600)

lines (-30,260,320, -30,260,500)
lines (-30,300,320, -30,300,500)
lines (-30,340,320, -30,340,500)
lines (-30,380,320, -30,380,500)
lines (-30,420,320, -30,420,500)
lines (-30,460,320, -30,460,500)
lines (-30,500,320, -30,500,500)

lines (-30,260,320, -500,240,320)
lines (-30,300,320, -500,280,320)
lines (-30,340,320, -500,320,320)
lines (-30,380,320, -500,360,320)
lines (-30,420,320, -500,400,320)
lines (-30,460,320, -500,440,320)
lines (-30,500,320, -500,480,320)
lines (-30,540,320, -500,520,320)

//reader
lines (-490,920,370, -490,920,600)
lines (-50,920,370, -50,920,600)

#macro ball (cx1,cy1,cz1)
sphere { <cx1,cy1,cz1> , 20 
         texture {pigment{ color rgb <1.1,0.47,0.14>}} 
         finish{reflection 0.3 specular 0.8 phong 0.5 phong_size 100 diffuse 2 ambient color<0.1,0.1,0.1> brilliance 2 } 
         rotate z*7 
       }
#end
ball (-30,500,500)
ball (-30,460,500)
ball (-30,420,500)
ball (-30,380,500)
ball (-30,340,500)
ball (-30,300,500)
ball (-30,260,500)

ball (-30,540,320)
ball (-30,500,320)
ball (-30,460,320)
ball (-30,420,320)
ball (-30,380,320)
ball (-30,340,320)
ball (-30,300,320)
ball (-30,260,320)

//reader
ball (-490,920,370)
ball (-50,920,370)

//magnetisation
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2)
merge{
cone { <cx,cy,cz>, 0
       <cx1,cy1,cz1>, 16  
     }
cylinder { <cx1,cy1,cz1> 
           <cx2,cy2,cz2>, 8 
         }
           texture {pigment{color rgb Silver} 
           finish{reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2 }}
           no_shadow rotate z*6 rotate y*-5 rotate x*1
     } 
#end
arrow(0,300,0,  0,300,-30,  0,300,-75)
arrow(0,500,0,  0,500,-30,  0,500,-75)
arrow(0,700,0,  0,700,-30,  0,700,-75)
arrow(0,900,0,  0,900,-30,  0,900,-75)
arrow(0,1100,0,  0,1100,-30,  0,1100,-75)

//activated magnetisation
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2)
merge{
cone {  <cx,cy,cz>, 0
        <cx1,cy1,cz1>, 18  
     }
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 10  } 
           texture {pigment{color rgb Silver} 
           finish{reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.8,0.3,0.5> brilliance 2 }}
           no_shadow rotate z*6 rotate y*-5 rotate x*0
         } 
#end
arrow(0,130,0,  0,130,-30,  0,130,-75)

//magnetic flux 1
#declare Spline_1 =
  spline {
   natural_spline
   0.0, <-10,180,50>,//start point
   0.6, <-10,330,-170>,
   0.8, <-10,480.9, -140>
   0.9, <-10,550.8,-60>,
   1.0, <-10,600, 70>,//end point
  }
  
 #declare Nr = 0;     // start
 #declare EndNr = 1;  // end
 #while (Nr< EndNr)   // -----------------------------------
 sphere{ <0,0,0>,4
          texture{ pigment{color rgb <1-Nr,0,Nr>}
                  finish {reflection 0.1 diffuse 0.9 phong 1} rotate z*7
                } no_shadow
         translate Spline_1(Nr)
       } // end of sphere
 #declare Nr = Nr + 0.00015;  // next Nr
 #end // -------------------------------------- end of loop
 
//magnetic flux 2
#declare Spline_1 =
  spline {
   natural_spline

   0.0, <-10,170,50>,//start point
   0.6, <-10,320,-200>,
   0.8, <-10,480.9, -180>
   0.9, <-10,580,-100>,
   1.0, <-10,670, 70>,//end point
  }
 #declare Nr = 0;     // start
 #declare EndNr = 1;  // end
 #while (Nr< EndNr)   // -----------------------------------
 sphere{ <0,0,0>,4
          texture{ pigment{color rgb <1-Nr,0,Nr>}
                  finish {reflection 0.1 diffuse 0.9 phong 1} rotate z*7
                } no_shadow
         translate Spline_1(Nr)
       } // end of sphere
 #declare Nr = Nr + 0.00015;  // next Nr
 #end // -------------------------------------- end of loop
  
//magnetic flux 3
#declare Spline_1 =
  spline {
   natural_spline
   0.0, <-10,160,50>,//start point
   0.6, <-10,330,-230>,
   0.8, <-10,520.9, -200>
   0.9, <-10,640,-100>,
   1.0, <-10,750, 70>,//end point
  }
 #declare Nr = 0;     // start
 #declare EndNr = 1;  // end
 #while (Nr< EndNr)   // -----------------------------------
 sphere{ <0,0,0>,4
          texture{ pigment{color rgb <1-Nr,0,Nr>}
                  finish {reflection 0.1 diffuse 0.9 phong 1} rotate z*7
                } no_shadow no_shadow
         translate Spline_1(Nr)
       } // end of sphere
 #declare Nr = Nr + 0.00015;  // next Nr
 #end // -------------------------------------- end of loop
 
 
 
 
 
 
 
