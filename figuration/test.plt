set terminal png

#set border 15 lw 2
set xtics font "Helvetica,15"
set ytics font "Helvetica,15" 
set xlabel font "Helvetica,15" 
set ylabel font "Helvetica,15" 
set ylabel "Times(us)"
set yrange [0:100]
set style data histogram
set key left
#set style line
set xtics rotate  by -45
set style histogram clustered gap 1 
set boxwidth 1 absolute #Öù×ÓµÄ¿í¶È
plot  "exp3.txt" using 2:xticlabels(1) title columnheader(2) fill pattern 10 fill solid 0.5 border -1 lw 2,''\
using 3:xticlabels(1) title columnheader(3) fill pattern 10 fill solid 0.1 border -1 lw 2,''\
using 4:xticlabels(1) title columnheader(4) fill pattern 10 fill solid 0.1 border -1
set output 