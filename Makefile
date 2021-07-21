RM = rm -rf
#max x
MAXX = 70
#max y
MAXY = 12
#step of grid cells
STEP = 4
.PHONY: data grid clean


tot.dat:
	./columns.sh $(MAXX) $(MAXY) $(STEP) > tot.dat 
	./rows.sh $(MAXX) $(MAXY) $(STEP) >> tot.dat;

grid: tot.dat
	gnuplot -p -e "set size ratio 1;plot 'tot.dat' with lines"

clean:
	$(RM) tot.dat




