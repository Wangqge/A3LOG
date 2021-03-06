reset
set terminal postscript eps enhanced color
#set terminal wxt
set yrange [0:1E+10]
set xlabel "times" font ", 40" offset 0,-4
set ylabel "delta" font ", 40" offset -5
set size ratio 0.6
set tics font ",40"
set title "SSSP-wiki"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 45 offset -2,-4

set output "arabic_sssp.eps"
plot "arabic_sssp.txt" u 1:2 w lp lt 1 pt 0 ps 1 lc 0 lw 7 title columnheader(2), "arabic_sssp.txt" u 3:4 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(4), "arabic_sssp.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title columnheader(6), "arabic_sssp.txt" u 7:8 w lp lt 3 pt 3 ps 2 lc 3 lw 5 title columnheader(8), "arabic_sssp.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10), "arabic_sssp.txt" u 11:12 w lp lt 5 pt 5 ps 2 lc 5 lw 5 title columnheader(12)
set output
