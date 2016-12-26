load "common.gnuplot.inc"
set title "Cellular Sales"
set yrange [0:]
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0f'
set key off
set grid
plot "input/57200084-DUR.csv" using 1:2 with lines lw 2 lt 1
