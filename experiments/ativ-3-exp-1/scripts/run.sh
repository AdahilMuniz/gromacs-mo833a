for i in `seq 1 100`; do echo "Tempo: 10.12 s" | grep Tempo; done > out.temp
cut -d\  -f2 < out.temp > test.csv
