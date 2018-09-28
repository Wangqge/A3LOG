reset
#set terminal png size 2096, 512  font ",30"
set terminal postscript font ",30"  eps enhanced color
set output "scale.eps"

set size 2,2
set multiplot layout 2,2

#######################################################################CC
set size 1,1
set origin 0,0
#set yrange [0:1E+15]
set xrange[4:24]
set xtics 4
set ytics 40
set size ratio 0.6
set ylabel "Times(s)" font ", 28"
set tics font ",28"
set xlabel "worker number of SSSP-wiki"
set key at graph 2,2.820 maxrows 1 font ",30" samplen 4
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_wiki_sssp.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_wiki_sssp.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_wiki_sssp.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4)
unset xrange



set size 1,1
set origin 1,0
#set yrange [0:1E+15]
set xrange[4:24]
set xtics 4
set ytics 40
set size ratio 0.6
set tics font ",28"
set xlabel "CC-wiki"
unset ylabel
unset key
#set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_wiki_cc.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_wiki_cc.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_wiki_cc.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4)
unset xrange



set size 1,1
set origin 0,1
#set yrange [0:1E+15]
set xrange[4:24]
set bmargin -3
set xtics 4
set ytics 40
set size ratio 0.6
set ylabel "Times(s)" font ", 28"
set tics font ",28"
set xlabel "SSSP-clueweb"
unset key
##set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_clueweb_sssp.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_clueweb_sssp.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_clueweb_sssp.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4)
unset xrange


set size 1,1
set origin 1,1
#set yrange [0:1E+15]
set xrange[4:24]
set bmargin -3
set xtics 4
set ytics 40
set size ratio 0.6
set tics font ",28"
set xlabel "CC-clueweb"
unset ylabel
unset key
#set key top outside horizontal center maxrows 2 font ",28"
#set logscale y
#set format y "10^{%L}"
set xtics rotate by 330
plot "scale_clueweb_cc.txt" u 1:2 w lp lt 1 pt 1 ps 1 lc 1 lw 5 title columnheader(2), "scale_clueweb_cc.txt" u 1:3 w lp lt 1 pt 2 ps 2 lc 2 lw 5 title columnheader(3), "scale_clueweb_cc.txt" u 1:4 w lp lt 2 pt 3 ps 2 lc 3 lw 5 title columnheader(4)
unset xrange



unset multiplot
set output