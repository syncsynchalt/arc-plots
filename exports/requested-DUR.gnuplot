load "common.gnuplot.inc"
set title "Requested (DUR)"
set yrange [0:]
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0f'
set key off
set grid
set style fill transparent solid 0.5
plot "input/requested-DUR.csv" using 1:2 with filledcurves x1 lt rgb "red"
