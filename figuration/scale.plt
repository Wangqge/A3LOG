reset
#set terminal png size 2096, 512  font ",30"
set terminal postscript font "Times-Roman,30"  eps enhanced color
set output "scale.eps"

set size 2,2.1
set multiplot layout 2,2

#######################################################################CC
set size 1,1
set origin 0,0
#set yrange [0:1E+15]
set xrange[4:24]
set xtics 4
set ytics 40
set size ratio 0.6
set ylabel "Times(s)" offset 2.4
set tics font ",28"
set xlabel "(c) SSSP-wiki" font ",40"
set key at graph 2.2,2.820 maxrows 2 font ",40" samplen 4
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_wiki_sssp.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_wiki_sssp.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_wiki_sssp.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4),"scale_wiki_sssp.txt" u 1:5 w lp lt 2 pt 4 ps 2 lc 4 lw 5 title columnheader(5),"scale_wiki_sssp.txt" u 1:6 w lp lt 2 pt 6 ps 2 lc 6 lw 5 title columnheader(6), "scale_wiki_sssp.txt" u 1:7 w lp lt 2 pt 7 ps 2 lc 7 lw 5 title columnheader(7)

unset xrange



set size 1,1
set origin 1,0
#set yrange [0:1E+15]
set xrange[4:24]
set xtics 4
set ytics 40
set size ratio 0.6
set tics font ",28"
set xlabel "(d) CC-wiki" font ",40"
unset ylabel
unset key
#set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_wiki_cc.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_wiki_cc.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_wiki_cc.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4),"scale_wiki_cc.txt" u 1:5 w lp lt 2 pt 4 ps 2 lc 4 lw 5 title columnheader(5),"scale_wiki_cc.txt" u 1:6 w lp lt 2 pt 6 ps 2 lc 6 lw 5 title columnheader(6),"scale_wiki_cc.txt" u 1:7 w lp lt 2 pt 7 ps 2 lc 7 lw 5 title columnheader(7)
unset xrange



set size 1,1
set origin 0,0.9
#set yrange [0:1E+15]
set xrange[4:24]
set bmargin -3
set xtics 4
set ytics 40
set size ratio 0.6
set ylabel "Times(s)"  offset 2.4
set tics font ",28"
set xlabel "(a) SSSP-clueweb" font ",40"
unset key
##set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_clueweb_sssp.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_clueweb_sssp.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_clueweb_sssp.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4), "scale_clueweb_sssp.txt" u 1:5 w lp lt 2 pt 4 ps 2 lc 4 lw 5 title columnheader(5), "scale_clueweb_sssp.txt" u 1:6 w lp lt 2 pt 6 ps 2 lc 6 lw 5 title columnheader(6), "scale_clueweb_sssp.txt" u 1:7 w lp lt 2 pt 7 ps 2 lc 7 lw 5 title columnheader(7)
unset xrange


set size 1,1
set origin 1,0.9
#set yrange [0:1E+15]
set xrange[4:24]
set bmargin -3
set xtics 4
set ytics 40
set size ratio 0.6
set tics font ",28"
set xlabel "(b) CC-clueweb" font ",40"
unset ylabel
unset key
#set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_clueweb_cc.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_clueweb_cc.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_clueweb_cc.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4),"scale_clueweb_cc.txt" u 1:5 w lp lt 2 pt 4 ps 2 lc 4 lw 5 title columnheader (5),"scale_clueweb_cc.txt" u 1:6 w lp lt 2 pt 6 ps 2 lc 6 lw 5 title columnheader(6),"scale_clueweb_cc.txt" u 1:7 w lp lt 2 pt 7 ps 2 lc 7 lw 5 title columnheader(7)
unset xrange



unset multiplot
set output