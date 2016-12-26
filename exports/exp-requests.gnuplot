set datafile separator ","
set terminal png size 800,500
set title "Requests by day"
set xdata time
set timefmt "%Y-%m-%d"
set format x "%m/%d"
set format y '%.0f'
set key off
set boxwidth 86400 absolute
set style fill solid
set xtics out
unset mxtics
plot "input/exp-requests.csv" using 1:2 with boxes lt 6
