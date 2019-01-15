reset
set term pngcairo size 1620,1080 enhanced font "Helvetica,43" 
set key font ",43"
set key spacing 1.0
set key outside
set key box
set key width 1
set key height 1
set border 4095 lw 3
#set pointinterval 
set output 'pointtype1.eps'
set ylabel"pointtype (pt)" 
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
f9(x)  title '1' w lp lw 5 pi -4 pt 1 ps 5 lc rgb '#6a2f04',\
f8(x)  title '2' w lp lw 5 pi -4 pt 2 ps 5 lc rgb '#8C510A',\
f7(x)  title '3' w lp lw 5 pi -4 pt 3 ps 5 lc rgb '#BF812D',\
f6(x)  title '4' w lp lw 5 pi -4 pt 4 ps 5 lc rgb '#DFC27D',\
f5(x)  title '5' w lp lw 5 pi -4 pt 5 ps 5 lc rgb '#92C5DE',\
f4(x)  title '6' w lp lw 5 pi -4 pt 6 ps 5 lc rgb '#4393C3',\
f3(x)  title '7' w lp lw 5 pi -4 pt 7 ps 5 lc rgb '#2166AC',\
f2(x)  title '8' w lp lw 5 pi -4 pt 8 ps 5 lc rgb '#084594',\
f1(x)  title '9' w lp lw 5 pi -4 pt 9 ps 5 lc rgb '#160d84'
! convert -density 600 -flatten  pointtype1.eps pointtype1.png




reset
set term pngcairo size 1620,1080 enhanced font "Helvetica,43" 
set key font ",43"
set key spacing 1.0
set key outside
set key box
set key width 1
set key height 1
set border 4095 lw 3
#set pointinterval 
set output 'pointtype2.eps'
set ylabel"pointtype (pt)" 
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
f9(x)  title '10' w lp lw 5 pi -4 pt 10 ps 5 lc rgb '#6a2f04',\
f8(x)  title '11' w lp lw 5 pi -4 pt 11 ps 5 lc rgb '#8C510A',\
f7(x)  title '12' w lp lw 5 pi -4 pt 12 ps 5 lc rgb '#BF812D',\
f6(x)  title '13' w lp lw 5 pi -4 pt 13 ps 5 lc rgb '#DFC27D',\
f5(x)  title '14' w lp lw 5 pi -4 pt 14 ps 5 lc rgb '#92C5DE',\
f4(x)  title '15' w lp lw 5 pi -4 pt 15 ps 5 lc rgb '#4393C3',\
f3(x)  title '16' w lp lw 5 pi -4 pt 16 ps 5 lc rgb '#2166AC',\
f2(x)  title '17' w lp lw 5 pi -4 pt 17 ps 5 lc rgb '#084594',\
f1(x)  title '18' w lp lw 5 pi -4 pt 18 ps 5 lc rgb '#160d84'
! convert -density 600 -flatten  pointtype2.eps pointtype2.png