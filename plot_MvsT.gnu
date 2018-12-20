reset
set terminal postscript eps enhanced color font "Helvetica,20" #size 800,600
set key font ",17"
set key spacing 0.85
set xlabel "Temperature (K)"
set output "M_vsT.eps"
set multiplot layout 2,1
set ylabel "M/Ms"
set key at 280, 0.8
set ytics 0.2

p "output_4" u 2:3 w lp lc rgb "#B2182B" pt 7 t "D = 4  nm",\
"output_5" u 2:3 w lp lc rgb "#D6604D" pt 7 t "5  nm",\
"output_6" u 2:3 w lp lc rgb "#F4A582" pt 7 t "6  nm",\
"output_7" u 2:3 w lp lc rgb "#92C5DE" pt 7 t "7  nm",\
"output_8" u 2:3 w lp lc rgb "#4393C3" pt 7 t "8  nm",\
"output_9" u 2:3 w lp lc rgb "#2166AC" pt 7 t "9  nm",\
"output_10" u 2:3 w lp lc rgb "navy" pt 7 t "10 nm"
set ylabel "{/Symbol c}"
set key at 280, 0.08
set ytics 0.02

p [:][0:0.09]"output_4" u 2:7 w lp lc rgb "#B2182B" pt 7 t "D = 4  nm",\
"output_5" u 2:7 w lp lc rgb "#D6604D" pt 7 t "5  nm",\
"output_6" u 2:7 w lp lc rgb "#F4A582" pt 7 t "6  nm",\
"output_7" u 2:7 w lp lc rgb "#92C5DE" pt 7 t "7  nm",\
"output_8" u 2:7 w lp lc rgb "#4393C3" pt 7 t "8  nm",\
"output_9" u 2:7 w lp lc rgb "#2166AC" pt 7 t "9  nm",\
"output_10" u 2:7 w lp lc rgb "navy" pt 7 t "10 nm"

unset multiplot
! convert -density 600 -flatten  M_vsT.eps M_vsT.png
