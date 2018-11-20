reset
#set terminal png size 2096, 512  font "Times-Roman,30"
set terminal postscript font "Times-Roman,30"  eps enhanced color
set output "combine.eps"

set size 4,2.1
set multiplot layout 2,4


#########################################################################################PAGERANK


set size 1,1
set origin 0,0
#set yrange [0:1E+15]
set size ratio 0.6
set ylabel "value" font "Time-Roman,30" offset 1
set tics font ",28"
set xlabel "(e) PageRank-clueweb09" font "Times-Roman,40" 
set key at graph 4.8,2.85 maxrows 1 font "Time-Roman,40" samplen 4
set logscale y
set format y "10^{%L}"
set xtics rotate by 330

#set output "arabic_cc.eps"
plot "clueweb_pagerank.txt" u 1:2 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(2),      "clueweb_pagerank.txt" u 3:4 w lp lt 1 pt 6 ps 2 lc 6 lw 5 title columnheader(4), "clueweb_pagerank.txt" u 5:6 w lp lt 2 pt 7 ps 2 lc 7 lw 5 title columnheader(6), "clueweb_pagerank.txt" u 7:8 w lp lt 3 pt 4 ps 2 lc 4 lw 5 title columnheader(8), "clueweb_pagerank.txt" u 9:10 w lp lt 4 pt 5 ps 2 lc 5 lw 5 title columnheader(10), "clueweb_pagerank.txt" u 11:12 w lp lt 5 pt 0 ps 2 lc 0 lw 7 title columnheader(12), "clueweb_pagerank.txt" u 13:14 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(14)


unset yrange
unset format
unset key
set size 1.08,1
set origin 0.92,0
#set yrange [0:8000]
set ylabel "buffersize"  font "Time-Roman,30" offset 2.6
set size ratio 0.6
set tics font ",28"
set xlabel"(f) PageRank-clueweb09" font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "clueweb_buffer.txt" u 1:2 w lp lt 3 pt 5 ps 2 lc 5 lw 5 title columnheader(2), "clueweb_buffer.txt" u 3:4 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(4), "clueweb_buffer.txt" u 5:6 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(6), "clueweb_buffer.txt" u 7:8 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(8), 
unset yrange
unset format


set size 1,1
set origin 2, 0
#set yrange [0:1E+15]
set size ratio 0.6
set ylabel "delta"  font "Time-Roman,30" offset 0
set tics font ",28"
set xlabel "(g) COST-128" font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330


#set output "arabic_cc.eps"
plot "cost.txt" u 1:2 w lp lt 1 pt 0 ps 2 lc 0 lw 5 title columnheader(2), "cost.txt" u 3:4 w lp lt 1 pt 1 ps 2 lc 1 lw 5 title columnheader(4), "cost.txt" u 5:6 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title columnheader(6), "cost.txt" u 7:8 w lp lt 3 pt 7 ps 2 lc 7 lw 5 title columnheader(8), "cost.txt" u 9:10 w lp lt 4 pt 4 ps 4 lc 4 lw 5 title columnheader(10)
unset format


set size 1.08,1
set origin 2.92,0
#set yrange [0:8000]
set ylabel "buffersize"  font "Time-Roman,30" offset 2.6
set size ratio 0.6
set tics font ",28"
set xlabel"(h) COST-128" font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "cost_buffer.txt" u 1:2 w lp lt 3 pt 4 ps 2 lc 4 lw 5 title columnheader(2), "cost_buffer.txt" u 3:4 w lp lt 4 pt 1 ps 2 lc 1 lw 5 title columnheader(4), "cost_buffer.txt" u 5:6 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(6)
unset yrange




#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

#######################################################################CC
set size 1,1
set origin 0,1
#set yrange [0:1E+15]
set size ratio 0.6
set ylabel "delta"  font "Times-Roman,30" offset 1
set tics font ",28"
set xlabel "(a) SSSP-arabic-2005"  font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",30"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330


#set output "arabic_cc.eps"
plot "arabic_sssp.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "arabic_sssp.txt" u 3:4 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(4), "arabic_sssp.txt" u 5:6 w lp lt 2 pt 0 ps 2 lc 0 lw 5 title columnheader(6),  "arabic_sssp.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10), "arabic_sssp.txt" u 11:12 w lp lt 5 pt 7 ps 2 lc 7 lw 5 title columnheader(12)
unset yrange


set size 1.08,1
set origin 0.92,1
#set yrange [0:8000]
set ylabel "buffersize"  font "Times-Roman,30" offset 2
set size ratio 0.6
set tics font ",28"
set xlabel"(b) SSSP-arabic-2005" font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",28"
unset logscale
unset format
set xtics rotate by 330

plot "arabic_sssp_buffer.txt" u 1:2 w lp pt 4 ps 2 lc 4 lw 5 title "async_{dym}", "arabic_sssp_buffer.txt" u 3:4 w lp  pt 5 ps 2 lc 5 lw 5 title "async_{pd}", "arabic_sssp_buffer.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title "async_{1000}","arabic_sssp_buffer.txt" u 7:8 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_{2000}"
unset yrange


##################################################################SSSP


set size 1,1
set origin 2,1
set ylabel "delta" font "Times-Roman,30" offset 0.8
set size ratio 0.6
set tics font ",28"
set xlabel "(c) CC-wiki"   font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",28"
set logscale y
set format y "10^{%L}"
set xtics rotate by 330
plot "wiki_cc.txt" u 1:2 w lp linetype 1 pt 0 ps 2 lc 0 lw 5 title columnheader(2), "wiki_cc.txt" u 3:4 w lp linetype 1 pt 1 ps 2 lc 2 lw 5 title columnheader(4), "wiki_cc.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title columnheader(6), "wiki_cc.txt" u 7:8 w lp lt 3 pt 7 ps 2 lc 7 lw 5 title columnheader(8), "wiki_cc.txt" u 9:10 w lp lt 4 pt 4 ps 2 lc 4 lw 5 title columnheader(10)
unset logscale
unset format


set size 1.08,1
set origin 2.92,1
set ylabel "buffersize"  font "Times-Roman,30" offset 2.2
set size ratio 0.6
set tics font ",28"
set xlabel "(d) CC-wiki" font "Times-Roman,40" 
#set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
unset key
plot "wiki_cc_buffer.txt" u 1:2 w lp pt 4 ps 2 lc 4 lw 5 title "async_{dym}", "wiki_cc_buffer.txt" u 3:4 w lp  pt 5 ps 2 lc 5 lw 5 title "async_{pd}", "wiki_cc_buffer.txt" u 5:6 w lp lt 2 pt 1 ps 2 lc 1 lw 5 title "async_{1000}","wiki_cc_buffer.txt" u 7:8 w lp lt 2 pt 2 ps 2 lc 2 lw 5 title "async_{2000}"
unset logscale
unset format






unset multiplot
set output
