load "common.gnuplot.inc"
set title "Speed Average (DUR)"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0f'
#set key off
set grid
plot "input/avgspeed-DUR.csv" using 1:2 with lines lw 2 lt 7 title "EWL", \
                           '' using 1:3 with lines lw 2 lt 3 title "LVS"
