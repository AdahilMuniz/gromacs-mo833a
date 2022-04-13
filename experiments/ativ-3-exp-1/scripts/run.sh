#for i in `seq 1 100`; do echo "Tempo: 10.12 s" | grep Tempo; done > out.temp
mkdir -p output/debug
mkdir -p output/release
#echo $gmx_debug

#Intermediate
cd ./../input
echo $(pwd)
#$gmx_debug pdb2gmx -f ../../../input/6LVN.pdb -o 6LVN_processed.gro -water spce
#$gmx_debug editconf -f 6LVN_processed.gro -o 6LVN_newbox.gro -c -d 1.0 -bt cubic
#$gmx_debug solvate -cp 6LVN_newbox.gro -cs spc216.gro -o 6LVN_solv.gro -p topol.top
#$gmx_debug grompp -f ions.mdp -c 6LVN_solv.gro -p topol.top -o ions.tpr
#$gmx_debug genion -s ions.tpr -o 6LVN_solv_ions.gro -p topol.top -pname NA -nname CL -neutral
#$gmx_debug grompp -f ions.mdp -c 6LVN_solv_ions.gro -p topol.top -o em.tpr
#$gmx_debug mdrun -v -deffnm em
for i in `seq 1 3`; do $gmx_debug mdrun -v -deffnm em | grep [MO833]; done > ./../scripts/output/debug/out.temp
cut -d\  -f5 < ./../scripts/output/debug/out.temp > ./../scripts/output/debug/test.csv
