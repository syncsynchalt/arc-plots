load "common.gnuplot.inc"
set title "Berkshire"
set yrange [0:]
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0f'
set key off
set grid
plot "input/2113200164-DUR.csv" using 1:2 with lines lw 2 lt 1
