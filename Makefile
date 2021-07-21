RM = rm -rf
#max x
MAXX = 10
#max y
MAXY = 10
#step of grid cells
STEP = 2
.PHONY: data grid clean


tot.dat:
	chmod +x *.sh
	./columns.sh $(MAXX) $(MAXY) $(STEP) > tot.dat 
	./rows.sh $(MAXX) $(MAXY) $(STEP) >> tot.dat;

grid: tot.dat
	gnuplot -p grid.gp

clean:
	$(RM) tot.dat




