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
Set_Camera(<CX,CY,CZ>, <LX,LY,LZ>, 35)
Set_Camera_Aspect(4,3)
Set_Camera_Sky(<0,0,1>)
light_source { <3000,3000,5000> color Gray90}
light_source { <13000,-13000,5000> color Gray70}


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
#if(spincolors0) texture { pigment {color Gray90}finish{reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2 }}
#else texture { spincolor0 finish {reflection {ref} diffuse 1 ambient 0}} #end
rotate z*97
}
#end
#include "atoms-00000000.inc"

//disk
#macro boxes (bx,by,bz, bx1,by1,bz1)
box {   <bx,by,bz>
	<bx1,by1,bz1>
        texture {pigment{ color rgbf<0.35,0.35,0.35, 0>}} 
        finish {phong  2 metallic diffuse 1.3 ambient 0} 
        rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (1,28,8, -560,1200,-88)

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
    texture {pigment{ color Scarlet}} 
    finish{reflection 0.2 specular 0.5 phong 0.5 phong_size 100 diffuse 2 ambient color<0.1,0.1,0.1> brilliance 2 } 
    rotate z*7     // Equivalent to "rotate <0,20,0>"--
    }
#end
boxes (-50,900,30, -490,940,400)

//bits
#macro line (cx1,cy1,cz1 cx2,cy2,cz2)
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 2.5 texture {pigment{ color White}} finish {phong  1 metallic diffuse 1.3 ambient 0} rotate z*7 }
#end


line (0,29,5, 0,1200,5)
//line (0,29,-75, 0,1200,-75)

line (-560,29,5, -560,1200,5)
line (-560,29,-88, -560,1200,-88)

line (0,29,5, -560,29,5)
//line (0,29,-88, -560,29,-88)

line (0,310,7, -560,310,7)
line (0,600,7, -560,600,7)
line (0,900,7, -560,900,7)
line (0,1200,7, -560,1200,7)

line (-560,29,5, -560,29,-88)
line (0,29,5, 0,29,-88)
line (0,310,5, 0,310,-88)
line (0,600,5, 0,600,-88)
line (0,900,5, 0,900,-88)
line (0,1200,5, 0,1200,-88)

//solenoid
#macro lines (cx1,cy1,cz1 cx2,cy2,cz2)
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 20 
           texture {pigment{ color rgb <1.1,0.47,0.14>}} 
	   finish{reflection 0.3 specular 0.8 phong 0.5 phong_size 100 diffuse 1.8 ambient color<0.1,0.1,0.1> brilliance 2 }
	   rotate z*7 
	 }
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
sphere { <cx1,cy1,cz1> , 20 
         exture {pigment{ color rgb <1.1,0.47,0.14>}} 
         finish{reflection 0.3 specular 0.8 phong 0.5 phong_size 100 diffuse 2 ambient color<0.1,0.1,0.1> brilliance 2 } 
         rotate z*7 
       }
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

//magnetisation
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2)
merge{
cone     { <cx,cy,cz>, 0
           <cx1,cy1,cz1>, 18  }
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 10  }
texture  { pigment{color rgb Silver} 
	   finish{reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.1,0.1,0.1> brilliance 2 }}
	   no_shadow rotate z*6 rotate y*-5 rotate x*1
	 } 
#end
arrow(0,220,-45,  0,180,-45,  0,120,-45)
arrow(0,800,-45,  0,760,-45,  0,700,-45)
arrow(0,1100,-45,  0,1060,-45,  0,1000,-45)

//activated magnetisation
#macro arrow (cx,cy,cz,cx1,cy1,cz1 cx2,cy2,cz2)
merge{
cone     { <cx,cy,cz>, 0
           <cx1,cy1,cz1>, 18  }
cylinder { <cx1,cy1,cz1> <cx2,cy2,cz2>, 10  }
texture  { pigment{color rgb Silver} 
	   finish{reflection 0.03 specular 0.5 phong 0.6 phong_size 100 diffuse 0.9 ambient color<0.8,0.3,0.5> brilliance 2 }}
	   no_shadow rotate z*6 rotate y*-5 rotate x*1
	 } 
#end
arrow(0,500,-45,  0,460,-45,  0,400,-45)

//magnetic flux 1
 #declare Spline_1 =
 spline {
   natural_spline
   0.0, <-10,300,50>,//start point
   0.6, <-50,510,-10>,
   1.0, <-50,680, 50>,//end point
  }
  
 #declare Nr = 0;     // start
 #declare EndNr = 1;  // end
 #while (Nr< EndNr)   // -----------------------------------
 sphere{ <0,0,0>,4
          texture{ pigment{color rgb <Nr,0,1-Nr>}
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

   0.0, <-10,280,50>,//start point
   0.6, <-50,510,-40>,
   1.0, <-50,700, 50>,//end point
  }
  
 #declare Nr = 0;     // start
 #declare EndNr = 1;  // end
 #while (Nr< EndNr)   // -----------------------------------
 sphere{ <0,0,0>,4
          texture{ pigment{color rgb <Nr,0,1-Nr>}
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

   0.0, <-10,260,50>,//start point
   0.6, <-50,510,-70>,
   1.0, <-50,720, 50>,//end point
  }
  
 #declare Nr = 0;     // start
 #declare EndNr = 1;  // end
 #while (Nr< EndNr)   // -----------------------------------
 sphere{ <0,0,0>,4
          texture{ pigment{color rgb <Nr,0,1-Nr>}
                  finish {reflection 0.1 diffuse 0.9 phong 1} rotate z*7
                } no_shadow
         translate Spline_1(Nr)
       } // end of sphere

 #declare Nr = Nr + 0.00015;  // next Nr
 #end // -------------------------------------- end of loop

