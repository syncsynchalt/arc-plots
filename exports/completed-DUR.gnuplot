set datafile separator ","
set terminal svg size 800,500
set title "Completed"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0f'
set key off
set grid
plot "input/completed-DUR.csv" using 1:2 with lines lw 2 lt 2
