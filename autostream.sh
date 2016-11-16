export OMP_NUM_THREADS=1
./stream | grep 'Threads\|Copy\|Scale\|Add\|Triad' > stream.log
for i in 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
do
export OMP_NUM_THREADS=$i
./stream | grep 'Threads\|Copy\|Scale\|Add\|Triad' >> stream.log
done
