load "common.gnuplot.inc"
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
f(x)=a+b*((x-dday)/86400)+c*((x-dday)/86400)**2+d*((x-dday)/86400)**3
dday=1456815600
fit f(x) "input/exp-requests.csv" using 1:2 via a,b,c,d
plot "input/exp-requests.csv" using 1:2 with boxes lt 6, f(x) lt rgb "#888888" lw 2
