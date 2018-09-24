reset
set terminal postscript eps enhanced color
#set terminal wxt
set yrange [0:9000]
set xlabel "times" font ", 40" offset 0,-4
set ylabel "buffersize" font ", 40" offset -5
set size ratio 0.6
set tics font ",40"
#set xtics("5" 5,"150" 15,"160" 20,"170" 25)
set title "PageRank-wiki-buffer"
set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 45 offset -2,-4

set output "wiki_pagerank_buffer.eps"
plot "wiki_pagerank_buffer.txt" u 1:2 w lp pt 3 ps 2 lc 3 lw 5 title "async_{pd}", "wiki_pagerank_buffer.txt" u 3:4 w lp  pt 1 ps 2 lc 1 lw 5 title "async_{dym}", "wiki_pagerank_buffer.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_p", "wiki_pagerank_buffer.txt" u 7:8 w lp lt 2 pt 4 ps 2 lc 4 lw 5 title "async_{2000}"
set output