reset
#set terminal png size 2096, 512  font ",30" 
set terminal postscript font ",30"  eps enhanced color
set output "compare.eps"

set rmargin 2
set lmargin 5
set size 3,1.25

set multiplot layout 1,3
set size 1,1.2
set origin 0,0
#set key top outside horizontal center maxrows 2 font ",28"
set key at graph 3,1.125 maxrows 1 font ",28" samplen 4
set ylabel "Time(s)"  offset 3.4
set xlabel "CC"
unset grid
set yrange [0:1000]
set logscale y
set xtics rotate by 340 offset -2,0
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:5:1] 'compare_cc.txt' using COL:xticlabels(1) title columnheader(COL)

set rmargin 2
set lmargin 5
set size 1,1.2
set origin 1,0
unset key
#set key top outside horizontal center maxrows 1
unset grid
unset ylabel
set yrange [0:1000]
set xlabel "SSSP"
set logscale y
set xtics rotate by 340  offset -2,0
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:5:1] 'compare_sssp.txt' using COL:xticlabels(1) title columnheader(COL)


set size 1,1.2
set origin 2,0
unset key
#set title "PageRank"
set xlabel "PageRank"
unset grid
unset ylabel
set yrange [0:1000]
set logscale y
set xtics rotate by 340 offset -2,0
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:5:1] 'compare_pagerank.txt' using COL:xticlabels(1)  title columnheader(COL)
unset multiplot
set output
