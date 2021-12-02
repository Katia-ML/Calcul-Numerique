set term png size 1900,1000

set output 'graphes.png'

set grid

set ylabel "Latency in cycles"

set xlabel "Simulation iteration"

plot "mat1.dat" w lp t "matmat1b", "mat2.dat" w lp t "matmat2b", "mat3.dat" w lp t "matmat3b"

