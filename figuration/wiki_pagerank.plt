reset
set terminal postscript eps enhanced color
#set terminal wxt
set yrange [0:1]
set xlabel "times" font ", 40" offset 0,-4
set ylabel "delta" font ", 40" offset -5
set size ratio 0.6
set tics font ",40"
set title "CC-wiki"
set key top outside horizontal center maxrows 2 font ",28"
#set format y "10^{%L}"
set xtics rotate by 45 offset -2,-4

set output "wiki_pagerank.eps"
plot "wiki_pagerank.txt" u 6:7 w lp linetype 1 pt 0 ps 1 lc 0 lw 7 title "sync", "wiki_pagerank.txt" u 1:2 w lp linetype 1 pt 1 ps 2 lc 1 lw 5 title "async_{1000}", "wiki_pagerank.txt" u 1:3 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_{pri}", "wiki_pagerank.txt" u 1:4 w lp lt 3 pt 3 ps 2 lc 3 lw 5 title "async_{dym}", "wiki_pagerank.txt" u 1:5 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title "async_{dp}"
set output
