load "common.gnuplot.inc"
set title "Routt County"
set yrange [0:]
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0s%c'
set key off
set grid
plot "input/2001715704-DUR.csv" using 1:2 with lines lw 2 lt 1
