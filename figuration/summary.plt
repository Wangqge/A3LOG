reset
#set terminal png size 2096, 512  font ",28" 
set terminal postscript font ",30"  eps enhanced color
set output "summary.eps"

set rmargin 2
set lmargin 5
set size 3,1

set multiplot layout 1,3
set size 1,0.9
set origin 0,0
#set key top outside horizontal center maxrows 2 font ",28"
set key at graph 2.66,1.225 maxrows 1 font ",30" samplen 4
set ylabel "Times(s)" offset 2.6
set xlabel "CC"
unset grid
set yrange [0:160]
set ytics 40
set xtics rotate by 340
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:6:1] 'summary_cc.txt' using COL:xticlabels(1) title columnheader(COL)

set rmargin 2
set lmargin 5
set size 1,0.9
set origin 1,0
unset key
#set key top outside horizontal center maxrows 1
unset grid
unset ylabel
set xlabel "SSSP"
set yrange [0:80]
set ytics 20
set xtics rotate by 340 
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:6:1] 'summary_sssp.txt' using COL:xticlabels(1) title columnheader(COL)


set size 1,0.9
set origin 2,0
unset key
#set title "PageRank"
unset ylabel
set xlabel "PageRank"
unset grid
set yrange [0:600]
set ytics 150
set xtics rotate by 340
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram

plot for [COL=2:6:1] 'summary_pagerank.txt' using COL:xticlabels(1)  title columnheader(COL)
unset multiplot
set output
