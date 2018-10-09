reset
set terminal postscript eps enhanced color
#set terminal wxt
#set yrange [0:1]
set xlabel "times" font ", 40" offset 0,-4
set ylabel "delta" font ", 40" offset -5
set size ratio 0.6
set tics font ",40"
set title "pagerank-clueweb-buffer"
set key top outside horizontal center maxrows 2 font ",28"
#set format y "10^{%L}"
set xtics rotate by 45 offset -2,-4
set output "clue_pagerank_buffer.eps"
plot "clueweb_buffer.txt" u 1:2 w lp lt 3 pt 3 ps 2 lc 3 lw 5 title columnheader(2), "clueweb_buffer.txt" u 3:4 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(4), "clueweb_buffer.txt" u 5:6 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(6), "clueweb_buffer.txt" u 7:8 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(8), 
set output