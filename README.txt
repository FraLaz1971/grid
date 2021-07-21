# makes a grid
# needs gnuplot and bash or sh
### usage
make grid
### on win msys2/mingw
mingw32-make grid
### to change the shape of the grid
### change in Makefile the following parameters
### max x
MAXX = <some x>
### max y
MAXY = <some y>
### step of grid cells
STEP = <some step>
### remove previous data file
make clean
### and then re-run
make grid

