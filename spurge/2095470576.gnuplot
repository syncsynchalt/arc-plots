set datafile separator ","
set terminal png size 800,500
set title "Miller & Long"
set yrange [0:]
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set format x "%m/%d"
set format y '%.0s%c'
set key off
set grid
plot "input/2095470576-DUR.csv" using 1:2 with lines lw 2 lt 1
