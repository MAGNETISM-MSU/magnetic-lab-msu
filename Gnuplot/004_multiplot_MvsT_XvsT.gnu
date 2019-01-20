/*========================================================================================================
    Designation : Template (multiplot)
    Created on  : 20 January 2019
    Author      : Andrea Meo
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/

#-----------------------------------------------
# Sample script file to generate figure with
# a top and bottom graphs
#-----------------------------------------------

# Load desired colour scheme and line styles
load "BrBu.colour"

# Set size of image
set size 1,1

# Set gnuplot to plot image as "eps" 
set terminal postscript enhanced eps solid color linewidth 2 font "Helvetica,18"
# Define file name of "eps" file
set output "riname.eps"

# Define file with the data to be plotted
file="multiplot_MvsT_XvsT.data"

# Set multiplot with 2 rows and 1 column
set multiplot layout 2,1 rowsfirst 
set tmargin 1.0

#*****************************************#
# First plot
#*****************************************#
# Define the macro cordinates for the first graph
set tmargin at screen 0.925; set bmargin at screen 0.55
set lmargin at screen 0.125; set rmargin at screen 0.94

# Define axis labels, ranges and formats
set ylabel 'Reduced magnetisation'
set xrange [-50:1250]
set yrange [-0.1:1.1]
set format x "%.0f"
set format y "%.1f"
# Set xtics manually without any label
set xtics ("" 0,"" 200 ,""  400 ,""  600 ,"" 800 ,"" 1000 ,"" 1200) scale 1.0 nomirror
# Plot ytics only on left axis
set ytics nomirror

p file   u 1:($2) w p ls 3 not

#*****************************************#
# Second plot
#*****************************************#
# Define the macro cordinates for the second graph
set tmargin at screen 0.50; set bmargin at screen 0.125
set lmargin at screen 0.125; set rmargin at screen 0.94
# Define axis labels, ranges and formats
set xlabel 'Temperature (K)'
set ylabel 'Susceptibility'
set xrange [-50:1250]
set yrange [-0.025:0.35]
set format x "%.0f"
set format y "%.1f"
# Reset xtics settings in order to plot tics
unset xtics
set xtics 0, 200, 1200
# Plot ytics only on left axis
set ytics nomirror
# Set interval of ytics
set ytics -0.1,0.1,1
# Set minor ytics at half position of each major ytics
set mytics 2

p file   u 1:($3) w p ls 5 not

# Close multiplot envirnoment
unset multiplot

# Convert "riname.eps" file into a "pdf" file
!epspdf riname.eps multiplot_MvsT_Xvs.pdf
# Convert "riname.eps" file into a "png" file
! convert -density 600 -flatten  riname.eps multiplot_MvsT_Xvs.png

exit
