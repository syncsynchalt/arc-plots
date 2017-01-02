load "common.gnuplot.inc"
set title "EWL Export"
#set ylabel "used"
#set xlabel "date"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.1s%c'
set key off
set grid
plot "input/store-ewl-export-week.csv" using 1:2 with lines lw 2 lt 2
