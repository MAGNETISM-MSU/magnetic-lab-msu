
/*========================================================================================================
    Designation : Colormap (Rainbow)
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
set output 'Rainbow.eps'
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
f9(x)  title '#000090' w l lw 15 lt 1 lc rgb '#000090',\
f8(x)  title '#000fff' w l lw 15 lt 1 lc rgb '#000fff',\
f7(x)  title '#0090ff' w l lw 15 lt 1 lc rgb '#0090ff',\
f6(x)  title '#0fffee' w l lw 15 lt 1 lc rgb '#0fffee',\
f5(x)  title '#90ff70' w l lw 15 lt 1 lc rgb '#90ff70',\
f4(x)  title '#ffee00' w l lw 15 lt 1 lc rgb '#ffee00',\
f3(x)  title '#ff7000' w l lw 15 lt 1 lc rgb '#ff7000',\
f2(x)  title '#ee0000' w l lw 15 lt 1 lc rgb '#ee0000',\
f1(x)  title '#7f0000' w l lw 15 lt 1 lc rgb '#7f0000'
! convert -density 600 -flatten  Rainbow.eps Rainbow.png


# color lists
# rgb '#000090' == dark ble
# rgb '#000fff' == blue
# rgb '#0090ff' == pale blue
# rgb '#0fffee' == light blue
# rgb '#90ff70' == light green
# rgb '#ffee00' == light yellow
# rgb '#ff7000' == orange
# rgb '#ee0000' == red
# rgb '#7f0000' == dark red
