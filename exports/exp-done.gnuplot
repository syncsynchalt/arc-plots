load "common.gnuplot.inc"
set title "Completed exports by day"
set xdata time
set timefmt "%Y-%m-%d"
set format x "%m/%d"
set format y "%.0s%c"
set key off
set boxwidth 86400 absolute
set style fill solid
set xtics out
unset mxtics

plot "input/exp-done.csv" using 1:2 with boxes lt 2
