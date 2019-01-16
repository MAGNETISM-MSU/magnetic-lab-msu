/*========================================================================================================
    Designation : Example (M vs T plot)
    Created on  : 16 January 2019
    Author      : Andrea Meo
    Location    : Computational magnetism group, Physics Department, Mahasarakham university, Thailand
==========================================================================================================*/

#-----------------------------------------------
# Sample script file to generate a M vs T plot
#-----------------------------------------------

# Set gnuplot to plot image as "eps" file with coloured lines, a thick frame and using as font "Helvetica" with font size 22
set term postscript enhanced eps solid color linewidth 2 font "Helvetica,22"
# Define file name of "eps" file
set output "riname.eps"

# Load desired colour scheme and line styles
load "../../BrBu.colour"

# Define file with the data to be plotted
file="MvsT.data"


# Define axes labels
set xlabel 'Temperature (K)'
set ylabel 'Reduced magnetisation (M_s(T)/M_s(0K))'
# Define axes ranges
set xrange [-50:2050]
set yrange [-0.05:1.05]
# Define axes format
set format x "%.0f"
set format y "%.1f"
# Plot axes tics only for bottom (x axis) and left (y axis)
set xtics nomirror
set ytics nomirror
# Set minor tics and their density
set mxtics 4
set mytics 2
# Set key in the top right corner of the plot right justified with larger spacing than default (spacing=1)
set key top right Right spacing 1.5


#------------------------------------------------------------------------------#
# Fit section
#------------------------------------------------------------------------------#

# The fit log is saved on file fit.log only and not printed to screen
set fit quiet

# Activate flag to store the fit parameters and associated errors
set fit errorvariables

# Define fitting function for temperature dependence of magnetisation
m_t(x) = x<Tc ? (1-x/Tc)**b : 0.02
# Define fitting parameters
Tc=1000.0
b=0.3


fit [0:1800][0:1] m_t(x)  file u 1:2 via Tc,b

# Save the fit variables in the file "variables.dat"
save variables 'variables.dat'

#------------------------------------------------------------------------------#
# Plot MvsT with fit
#------------------------------------------------------------------------------#

# Set number of points to be used to plot the fitting function
set sample 1000

# Plot the data and the fitting function only if temperature is large than 0
p file   u 1:2 w p ls 4 t 'Data',\
  x>=0?m_t(x):0/0 lc 6 t sprintf("(1-T/%.0fK)^{%.3f}",Tc,b)

# Set size of the image and ratio
set size 1, 1
set size ratio 0.7


# Convert "riname.eps" file into a "pdf" file
!epspdf riname.eps MvsT_fit.pdf
# Convert "riname.eps" file into a "png" file
! convert -density 600 -flatten  riname.eps MvsT_fit.png


exit
