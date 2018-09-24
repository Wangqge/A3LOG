reset
set terminal postscript eps enhanced color
#set terminal wxt
set yrange [0:6000]
set xlabel "times" font ", 40" offset 0,-4
set ylabel "buffersize" font ", 40" offset -5
set size ratio 0.6
set tics font ",40"
set title "SSSP-wiki-buffer"
set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 45 offset -2,-4

set output "wiki_sssp_buffer.eps"
plot "wiki_sssp_buffer.txt" u 1:2 w lp pt 3 ps 2 lc 3 lw 5 title "async_{dp}", "wiki_sssp_buffer.txt" u 3:4 w lp  pt 1 ps 2 lc 1 lw 5 title "async_{dym}", "wiki_sssp_buffer.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_{1000}","wiki_sssp_buffer.txt" u 7:8 w lp lt 2 pt 5 ps 2 lc 3 lw 5 title "async_{2000}","wiki_sssp_buffer.txt" u 9:10 w lp lt 2 pt 4 ps 2 lc 4 lw 5 title "async_{4000}"
set output