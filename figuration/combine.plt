reset
#set terminal png size 2096, 512  font ",30"
set terminal postscript font ",30"  eps enhanced color
set output "combine.eps"

set size 4,3
set multiplot layout 3,4

#######################################################################CC
set size 1,1
set origin 0,0
#set yrange [0:1E+15]
set size ratio 0.6
set ylabel "delta" font ", 28"
set tics font ",28"
set xlabel "CC-arabic-delta"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330


#set output "arabic_cc.eps"
plot "arabic_cc.txt" u 1:2 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(2), "arabic_cc.txt" u 3:4 w lp lt 1 pt 0 ps 2 lc 0 lw 5 title columnheader(4), "arabic_cc.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title columnheader(6), "arabic_cc.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10), "arabic_cc.txt" u 11:12 w lp lt 5 pt 7 ps 2 lc 7 lw 5 title columnheader(12)
unset yrange


set size 1,1
set origin 1,0
#set yrange [0:8000]
set ylabel "buffersize" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel"CC-arabic-buffer"
set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "arabic_cc_buffer.txt" u 1:2 w lp pt 4 ps 2 lc 4 lw 5 title "async_{dym}", "arabic_cc_buffer.txt" u 3:4 w lp  pt 5 ps 2 lc 5 lw 5 title "async_{pd}", "arabic_cc_buffer.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title "async_{1000}","arabic_cc_buffer.txt" u 7:8 w lp lt 2 pt 5 ps 2 lc 5 lw 5 title "async_{2000}"
unset yrange
#,"arabic_cc_buffer.txt" u 9:10 w lp lt 2 pt 6 ps 2 lc 6 lw 5 title "async_{4000}"
set size 1,1
set origin 2,0
#set yrange [0:1E+17]
set ylabel "delta" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel "CC-wiki-delta"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330
plot "wiki_cc.txt" u 1:2 w lp linetype 1 pt 0 ps 2 lc 0 lw 5 title columnheader(2), "wiki_cc.txt" u 3:4 w lp linetype 1 pt 1 ps 2 lc 2 lw 5 title columnheader(4), "wiki_cc.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title columnheader(6), "wiki_cc.txt" u 7:8 w lp lt 3 pt 7 ps 2 lc 7 lw 5 title columnheader(8), "wiki_cc.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10)
unset yrange

set size 1,1
set origin 3,0

#set yrange [0:8000]
set ylabel "buffersize" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel "CC-wiki-buffer"
set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "wiki_cc_buffer.txt" u 1:2 w lp pt 4 ps 2 lc 4 lw 5 title "async_{dym}", "wiki_cc_buffer.txt" u 3:4 w lp  pt 5 ps 2 lc 5 lw 5 title "async_{pd}", "wiki_cc_buffer.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title "async_{1000}","wiki_cc_buffer.txt" u 7:8 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_{2000}"

##################################################################SSSP
set size 1,1
set origin 0,1
set xlabel "times" font ", 28"
set ylabel "delta" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel "SSSP-arabic-delta"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330
plot "arabic_sssp.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "arabic_sssp.txt" u 3:4 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(4), "arabic_sssp.txt" u 5:6 w lp lt 2 pt 0 ps 2 lc 0 lw 5 title columnheader(6),  "arabic_sssp.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10), "arabic_sssp.txt" u 11:12 w lp lt 5 pt 7 ps 2 lc 7 lw 5 title columnheader(12)
unset logscale
unset format

set size 1,1
set origin 1,1
set xlabel "times" font ", 28"
set ylabel "buffersize" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel "SSSP-arabic-buffer"
set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330

plot "arabic_sssp_buffer.txt" u 1:2 w lp pt 4 ps 2 lc 4 lw 5 title "async_{dym}", "arabic_sssp_buffer.txt" u 3:4 w lp  pt 5 ps 2 lc 5 lw 5 title "async_{pd}", "arabic_sssp_buffer.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title "async_{1000}","arabic_sssp_buffer.txt" u 7:8 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_{2000}"
unset logscale
unset format


set size 1,1
set origin 2,1
set xlabel "times" font ", 28"
set ylabel "delta" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel "SSSP-wiki-delta"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330
plot "wiki_sssp.txt" u 1:2 w lp lt 1 pt 0 ps 1 lc 0 lw 5 title columnheader(2), "wiki_sssp.txt" u 3:4 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(4), "wiki_sssp.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title columnheader(6), "wiki_sssp.txt" u 7:8 w lp lt 3 pt 7 ps 2 lc 7 lw 5 title columnheader(8), "wiki_sssp.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10)
unset logscale
unset format


set size 1,1
set origin 3,1
set xlabel "times" font ", 28"
set ylabel "buffersize" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel "SSSP-wiki-buffer"
set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330

plot "wiki_sssp_buffer.txt" u 1:2 w lp pt 4 ps 2 lc 4 lw 5 title columnheader(2), "wiki_sssp_buffer.txt" u 3:4 w lp  pt 5 ps 2 lc 5 lw 5 title columnheader(4), "wiki_sssp_buffer.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title columnheader(6),"wiki_sssp_buffer.txt" u 7:8 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title columnheader(8)
#,"wiki_sssp_buffer.txt" u 9:10 w lp lt 2 pt 6 ps 2 lc 6 lw 5 title columnheader(10)
unset logscale
unset format
#########################################################################################PAGERANK
set size 1,1
set origin 0,2
#set yrange [0:1E+15]
set size ratio 0.6
set ylabel "delta" font ", 28"
set tics font ",28"
set xlabel "PageRank-clueweb09-value"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330

#set output "arabic_cc.eps"
plot "clueweb_pagerank.txt" u 1:2 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(2), "clueweb_pagerank.txt" u 3:4 w lp lt 1 pt 6 ps 2 lc 6 lw 5 title columnheader(4), "clueweb_pagerank.txt" u 5:6 w lp lt 2 pt 7 ps 2 lc 7 lw 5 title columnheader(6), "clueweb_pagerank.txt" u 7:8 w lp lt 3 pt 4 ps 2 lc 4 lw 5 title columnheader(8), "clueweb_pagerank.txt" u 9:10 w lp lt 4 pt 5 ps 2 lc 5 lw 5 title columnheader(10), "clueweb_pagerank.txt" u 11:12 w lp lt 5 pt 0 ps 2 lc 0 lw 7 title columnheader(12)
unset yrange
unset format

set size 1,1
set origin 1,2
#set yrange [0:8000]
set ylabel "buffersize" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel"PageRank-clueweb-buffer"
set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "clueweb_buffer.txt" u 1:2 w lp lt 3 pt 5 ps 2 lc 5 lw 5 title columnheader(2), "clueweb_buffer.txt" u 3:4 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(4), "clueweb_buffer.txt" u 5:6 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(6), "clueweb_buffer.txt" u 7:8 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(8), 
unset yrange
unset format


set size 1,1
set origin 2,2
#set yrange [0:1E+15]
set size ratio 0.6
set ylabel "delta" font ", 28"
set tics font ",28"
set xlabel "COST-delta"
set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330


#set output "arabic_cc.eps"
plot "cost.txt" u 1:2 w lp lt 1 pt 0 ps 2 lc 0 lw 5 title columnheader(2), "cost.txt" u 3:4 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(4), "cost.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title columnheader(6), "cost.txt" u 7:8 w lp lt 3 pt 7 ps 2 lc 7 lw 5 title columnheader(8), "cost.txt" u 9:10 w lp lt 4 pt 4 ps 4 lc 4 lw 5 title columnheader(10)
unset format


set size 1,1
set origin 3,2
#set yrange [0:8000]
set ylabel "buffersize" font ", 28"
set size ratio 0.6
set tics font ",28"
set xlabel"COST-buffer"
set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "cost_buffer.txt" u 1:2 w lp lt 3 pt 4 ps 2 lc 4 lw 5 title columnheader(2), "cost_buffer.txt" u 3:4 w lp lt 4 pt 1 ps 2 lc 1 lw 5 title columnheader(4), "cost_buffer.txt" u 5:6 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(6)
unset yrange

unset multiplot
set output
