load "common.gnuplot.inc"
set title "Completed (DUR)"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0f'
set key off
set grid
set style fill transparent solid 0.5
plot "input/completed-DUR.csv" using 1:2 with lines lt 2, "input/completed-DUR.csv" using 1:2 noautoscale with filledcurves x1 lt 2
