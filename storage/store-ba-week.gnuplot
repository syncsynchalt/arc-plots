load "common.gnuplot.inc"
set title "BlueArc Export rsync"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0s%c'
set key off
set grid
plot "input/store-ba-week.csv" using 1:2 with lines lw 2 lt 1
