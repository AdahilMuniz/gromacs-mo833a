#for i in `seq 1 100`; do echo "Tempo: 10.12 s" | grep Tempo; done > out.temp
mkdir -p output/debug
mkdir -p output/release
#echo $gmx_debug

#Intermediate
cd ./../input
echo $(pwd)

for i in `seq 1 10`; do $gmx_release mdrun -v -deffnm em | grep [MO833]; done > ./../scripts/output/release/out.temp
cut -d\  -f5 < ./../scripts/output/release/out.temp > ./../scripts/output/release/test.csv

for i in `seq 1 10`; do $gmx_debug mdrun -v -deffnm em | grep [MO833]; done > ./../scripts/output/debug/out.temp
cut -d\  -f5 < ./../scripts/output/debug/out.temp > ./../scripts/output/debug/test.csv
