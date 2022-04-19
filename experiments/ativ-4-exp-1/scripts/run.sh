mkdir -p output/release

#Intermediate
cd ./../input
echo $(pwd)

for i in `seq 1 100`; do $gmx_release mdrun -v -deffnm em | grep [MO833]; done > ./../scripts/output/release/out.temp
cut -d\  -f5 < ./../scripts/output/release/out.temp > ./../scripts/output/release/test.csv