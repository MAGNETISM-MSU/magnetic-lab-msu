reset
set term pngcairo size 1620,1080 enhanced font "Helvetica,43"
set key font ",43"
set key spacing 1.0
set key outside
set key box
set key width 1.5
set key height 1
set border 4095 lw 3
set output 'RdBu.eps'
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
f9(x)  title '#910d13' w l lw 15 lt 1 lc rgb '#910d13',\
f8(x)  title '#b71f2a' w l lw 15 lt 1 lc rgb '#b71f2a',\
f7(x)  title '#D6604D' w l lw 15 lt 1 lc rgb '#D6604D',\
f6(x)  title '#F4A582' w l lw 15 lt 1 lc rgb '#F4A582',\
f5(x)  title '#92C5DE' w l lw 15 lt 1 lc rgb '#92C5DE',\
f4(x)  title '#4393C3' w l lw 15 lt 1 lc rgb '#4393C3',\
f3(x)  title '#2166AC' w l lw 15 lt 1 lc rgb '#2166AC',\
f2(x)  title '#084594' w l lw 15 lt 1 lc rgb '#084594',\
f1(x)  title '#160d84' w l lw 15 lt 1 lc rgb '#160d84'
! convert -density 600 -flatten  RdBu.eps RdBu.png

# color lists
# rgb '#910d13' == dark red
# rgb '#b71f2a' == red
# rgb '#D6604D' == pale red
# rgb '#F4A582' == very light red
# rgb '#92C5DE' == light blue
# rgb '#4393C3' == medium blue
# rgb '#2166AC' == blue
# rgb '#084594' == heavy blue
# rgb '#160d84'    == dark blue
