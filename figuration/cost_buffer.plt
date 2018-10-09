reset
set terminal postscript eps enhanced color
#set terminal wxt
#set yrange [0:1]
set xlabel "times" font ", 40" offset 0,-4
set ylabel "delta" font ", 40" offset -5
set size ratio 0.6
set tics font ",40"
set title "cost-buffer"
set key top outside horizontal center maxrows 2 font ",28"
#set format y "10^{%L}"
set xtics rotate by 45 offset -2,-4
set output "cost_buffer.eps"
plot "cost_buffer.txt" u 1:2 w lp lt 3 pt 3 ps 2 lc 3 lw 5 title columnheader(2), "cost_buffer.txt" u 3:4 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(4), "cost_buffer.txt" u 5:6 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(6), 
set output