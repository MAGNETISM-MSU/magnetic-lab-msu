
/*========================================================================================================
    Designation : Colormap (Mix color)
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
set key width 1.5
set key height 1
set border 4095 lw 3
set output 'Mix.eps'
set ylabel"Colormap" 
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
f9(x)  title '#e78332' w l lw 15 lt 1 lc rgb '#e78332',\
f8(x)  title '#0072bd' w l lw 15 lt 1 lc rgb '#0072bd',\
f7(x)  title '#ff7060' w l lw 15 lt 1 lc rgb '#ff7060',\
f6(x)  title '#edb120' w l lw 15 lt 1 lc rgb '#edb120',\
f5(x)  title '#7e2f8e' w l lw 15 lt 1 lc rgb '#7e2f8e',\
f4(x)  title '#77ac30' w l lw 15 lt 1 lc rgb '#77ac30',\
f3(x)  title '#4dbeee' w l lw 15 lt 1 lc rgb '#4dbeee',\
f2(x)  title '#d95319' w l lw 15 lt 1 lc rgb '#d95319',\
f1(x)  title '#a2142f' w l lw 15 lt 1 lc rgb '#a2142f'
! convert -density 600 -flatten  Mix.eps Mix.png

# color lists
# rgb '#e78332' # light orange
# rgb '#0072bd' # blue
# rgb '#ff7060' # pink
# rgb '#edb120' # yellow
# rgb '#7e2f8e' # purple
# rgb '#77ac30' # green
# rgb '#4dbeee' # light-blue
# rgb '#d95319' # orange
# rgb '#a2142f' # red

