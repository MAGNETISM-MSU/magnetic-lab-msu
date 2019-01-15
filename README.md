# magnetic-lab-msu
This branch of git has been made up to share our graphical templates for using on gnuplot (more info: www.gnuplot.info/).
Additionally, the basic tutorials of the visualization software package called POV-Ray (more info: www.povray.org) is also presented.




### WHAT IS GNUPLOT?

Gnuplot is a portable command-line driven graphing utility for Linux, OS/2, MS Windows, OSX, VMS, and many other platforms. The source code is copyrighted but freely distributed. It was originally created to allow scientists and students to visualize mathematical functions and data for both 2D and 3D plots. Moreover, it supports many different types of output. Gnuplot has been supported and under active development since 1986. The current version is Gnuplot 5.2. In this tutorial we try to present the simple plots based on the template we oftenly use. 


#### Color schemes and Colormaps

Qualitative color schemes are good for comparing data sets without emphasizing any inherent ordering: attributes of categorically-grouped data, plots of data points and fits to the data, etc. The following color scheme is what we frequently use in our group. 

![color](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/color_pattern.png)

The following colormaps represent the specific RGB color code of the color schemes as mentioned above which are [BrBu](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/001_lc_BrBu.gnu), [RdBu](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/001_lc_RdBu.gnu), [Mix color](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/001_lc_Mix.gnu), and [Rainbow](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/001_lc_Rainbow.gnu), respectively.

![colormap](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/colormap.png)


#### Dash types

In order to compare data sets clearly, the [dash types](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/002_dt_dashtype.gnu) should be also used for the plot. In Gnuplot 5.2 the command 
"dashtype" or "dt" is used to make the different lines between data sets in stead of the command "linetype" or "lt".
Dash types are defined by the sequence of number from 0 to 5 and the specified symbols as follows. 

![dash_type](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/dash_types.png)


#### Point types

The [point types](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/003_pt_pointtype.gnu) is also useful for the plot in terms of categorically-grouped data. For example,

![point_type](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/point_types.png)



#### HOW TO START?

1. Download [Gnuplot 5.2](http://www.gnuplot.info/)
2. Get some instructions from the basic [tutorial](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Gnuplot/000_Instruction.txt) (more info: [Gnuplot 5.2 Manual](http://www.gnuplot.info/docs_5.2/Gnuplot_5.2.pdf) and [Demos](http://gnuplot.sourceforge.net/demo/))
3. Download xxx_filename.gnu from [here](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/tree/master/Gnuplot) to place in the reposity folder on your local
4. Generate graph following the basic command lines from the tutorials
5. Try on others :)

#### CREDITS

Some of the colormaps used here have been cited from [gnuplot-colorbrewer](https://github.com/aschn/gnuplot-colorbrewer)
which is written and maintained by Anna Schneider <annarschneider@gmail.com>. 

##### HINT: This tutorial has been made up for using on Gnuplot 5.2 only !


### WHAT IS POV-RAY?

POV-Ray is a visualization software package which is used for producing the high qualitative images with realistic reflection. The more sophisticated textures can be also produced with the specific commands. Moreover, it is able to use in many platforms such as Windows, Linux, Mac OS, and etc. The visualization is also very useful for the description of some complex phenomema in Physics. Therefore, we make this tutorial to learn and share knowledges about using PoV-Ray. The following images are some examples. 

![hdd](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/hdd_crop.png)

The above picture represents the evolution of magnetic recording technologies in hard diske drive (HDD) from the beginning until now which are longitudinal magnetic recording ([LMR](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_5_LMR.pov)), perpendicular magnetic recording ([PMR](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_6_PMR.pov)), heat assisted magnetic recording ([HAMR](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_7_HAMR.pov)), and microwave assisted magnetic recording ([MAMR](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_8_MAMR.pov)), respectively.


![structure](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/structure_crop.png)

This picture shows the atomic unit cell structures of materials which are simple cubic ([SC](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_1_SC.pov)), body-centered cubic ([BCC](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_2_BCC.pov)), face-centered cubic ([FCC](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_3_FCC.pov)), and hexagonal close packed ([HCP](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/007_4_HCP.pov)) structures from left to right.



![EB](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/Image%20library/EB_crop.png)

The visualization is also very useful for the description of some complex phenomema in Physics. For example, the above image refers to the magnetization revesal process in the magnetic bilayer system at any time and external magnetic field called hysteresis loop. In order to explain the state of magnetization step by step, we need some visualizations to ease that. In the publications, sometimes, we also need the attractive graphs and realistic images which are used to describe our stuffs to gain attentions. 

#### HOW TO START?
1. Go to download links for [Windows](http://www.povray.org/download/) and [Linux](http://www.povray.org/download/linux.php)
2. Get some instructions from the [POV-Ray](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/000_About%20POV-Ray.pdf) and the [tutorials](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/blob/master/POV-Ray%20Tutorials/001_Instruction.txt) (more info: www.povray.org)
3. Download xxx_filename.pov from [here](https://github.com/MAGNETISM-MSU/magnetic-lab-msu/tree/master/POV-Ray%20Tutorials) to place in the reposity folder on your local
4. Generate an image following the basic command lines from the tutorials
5. Try on others :)

##### HINT: This tutorial has been made up for using on Linux only !




