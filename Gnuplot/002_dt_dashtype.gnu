
/*========================================================================================================
    Designation : Dash types
    Created on  : 15 January 2019
    Author      : Wassana Daeng-am
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/

reset
set term pngcairo size 1620,1080 enhanced font "Helvetica,43"
set key font ",43"
set key spacing 1.0
set key outside
set key box
set key width 0
set key height 1
set border 4095 lw 3
set output 'dashtype.eps'
set ylabel"dashtype (dt)" 
set xtics 15
set ytics 10

a=1
b=2
c=3
d=4
e=5
f=6
g=7
h=8
i=9
j=10

f1(x)=a
f2(x)=b
f3(x)=c
f4(x)=d
f5(x)=e
f6(x)=f
f7(x)=g
f8(x)=h
f9(x)=i
f10(x)=j

p [0.1:8][0.1:9.9]\
f9(x)  title '0' w l lw 15 dt 0 lc rgb '#6a2f04',\
f8(x)  title '1' w l lw 15 dt 1 lc rgb '#8C510A',\
f7(x)  title '2' w l lw 15 dt 2 lc rgb '#BF812D',\
f6(x)  title '3' w l lw 15 dt 3 lc rgb '#DFC27D',\
f5(x)  title '4' w l lw 15 dt 4 lc rgb '#92C5DE',\
f4(x)  title '5' w l lw 15 dt 5 lc rgb '#4393C3',\
f3(x)  title '"."' w l lw 15 dt "." lc rgb '#2166AC',\
f2(x)  title '"-"' w l lw 15 dt "-" lc rgb '#084594',\
f1(x)  title '"{\_}"' w l lw 15 dt "_" lc rgb '#160d84'
! convert -density 600 -flatten  dashtype.eps dashtype.png




