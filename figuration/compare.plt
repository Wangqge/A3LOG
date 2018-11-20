reset
#set terminal png size 2096, 512  font ",30" 
set terminal postscript font "Times-Roman,30"  eps enhanced color
set output "compare.eps"

set rmargin 2
set lmargin 5
set size 3.1,1.1

set multiplot layout 1,3
set size 1,0.9
set origin 0.1,0
#set key top outside horizontal center maxrows 2 font ",28"
set key at graph 3.3,1.225 maxrows 1 font ",28" samplen 4
set ylabel "Time(s)"  offset 3.4
set xlabel "(1) CC"   font "Times-Roman,32" 
unset grid
set yrange [0:10000]
set logscale y
set xtics rotate by 340 offset -2,0
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
fn(v) = sprintf("%.1f", v)
plot for [COL=2:6:1]  'compare_cc.txt' using COL:xticlabels(1) title columnheader(COL),\
 'compare_cc.txt' u ($0-1-2./6):2:(fn($2)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_cc.txt' u ($0-1-1./6):3:(fn($3)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_cc.txt' u ($0-1+0./6):4:(fn($4)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_cc.txt' u ($0-1+1./6):5:(fn($5)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_cc.txt' u ($0-1+2./6):6:(fn($6)) w labels  rotate by 90 font ",18" offset char 0,0.5 t ''  


set rmargin 2
set lmargin 5
set size 1,0.9
set origin 1.1,0
unset key
#set key top outside horizontal center maxrows 1
unset grid
unset ylabel
set yrange [0:10000]
set xlabel "(2) SSSP"   font "Times-Roman,32" 
set logscale y
set xtics rotate by 340  offset -2,0
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:6:1] 'compare_sssp.txt' using COL:xticlabels(1) title columnheader(COL),\
 'compare_sssp.txt' u ($0-1-2./6):2:(fn($2)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_sssp.txt' u ($0-1-1./6):3:(fn($3)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_sssp.txt' u ($0-1+0./6):4:(fn($4)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_sssp.txt' u ($0-1+1./6):5:(fn($5)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_sssp.txt' u ($0-1+2./6):6:(fn($6)) w labels  rotate by 90 font ",18" offset char 0,0.5 t ''  
unset yrange

set size 1,0.9
set origin 2.1,0
unset key
#set title "PageRank"
set xlabel "(c) PageRank"     font "Times-Roman,32" 
unset grid
unset ylabel
#set yrange [0:1000]
set logscale y
set xtics rotate by 340 offset -2,0
set boxwidth 1
#absolute
set style fill solid 2 border lt -1
set style histogram cluster gap 1
set style data  histogram
plot for [COL=2:6:1] 'compare_pagerank.txt' using COL:xticlabels(1)  title columnheader(COL),\
 'compare_pagerank.txt' u ($0-1-2./6):2:(fn($2)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_pagerank.txt' u ($0-1-1./6):3:(fn($3)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_pagerank.txt' u ($0-1+0./6):4:(fn($4)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_pagerank.txt' u ($0-1+1./6):5:(fn($5)) w labels  rotate by 90 font ",18" offset char 0,0.5 t '' , \
 'compare_pagerank.txt' u ($0-1+2./6):6:(fn($6)) w labels  rotate by 90 font ",18" offset char 0,0.5 t ''  
unset multiplot
set output
