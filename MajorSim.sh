#!/bin/sh

echo starting x86
echo ***Simming FFT
/gem5/build/X86/gem5.opt --outdir=out/x86/major/FFT configs/example/se.py --cpu-type=X86O3CPU --num-cpus=2 --cpu-clock=4GHz --caches --cacheline_size 64 --l1i_size=32kB --l1i_assoc=8 --l1d_size=64kB --l1d_assoc=8 --l2cache --l2_size=2MB --l2_assoc=16 --l3cache --l3_size=8MB --l3_assoc=16 --cmd=benchmarks/x86/FFT  --options="-p2 -m16" &
echo ***Simming LU
/gem5/build/X86/gem5.opt --outdir=out/x86/major/LU configs/example/se.py --cpu-type=X86O3CPU --num-cpus=2 --cpu-clock=4GHz --caches --cacheline_size 64 --l1i_size=32kB --l1i_assoc=8 --l1d_size=64kB --l1d_assoc=8 --l2cache --l2_size=2MB --l2_assoc=16 --l3cache --l3_size=8MB --l3_assoc=16 --cmd=benchmarks/x86/LU  --options="-p2 -n512" &
echo ***Simming Radix
/gem5/build/X86/gem5.opt --outdir=out/x86/major/Radix configs/example/se.py --cpu-type=X86O3CPU --num-cpus=2 --cpu-clock=4GHz --caches --cacheline_size 64 --l1i_size=32kB --l1i_assoc=8 --l1d_size=64kB --l1d_assoc=8 --l2cache --l2_size=2MB --l2_assoc=16 --l3cache --l3_size=8MB --l3_assoc=16 --cmd=benchmarks/x86/RADIX  --options="-p2 -n1048576" &

echo starting riscv
echo ***Simming FFT
/gem5/build/RISCV/gem5.opt --outdir=out/riscv/major/FFT configs/example/se.py --cpu-type=RiscvO3CPU --num-cpus=2 --cpu-clock=4GHz --caches --cacheline_size 64 --l1i_size=32kB --l1i_assoc=8 --l1d_size=64kB --l1d_assoc=8 --l2cache --l2_size=2MB --l2_assoc=16 --l3cache --l3_size=8MB --l3_assoc=16 --cmd=benchmarks/riscv/FFT  --options="-p2 -m16" &
echo ***Simming LU
/gem5/build/RISCV/gem5.opt --outdir=out/riscv/major/LU configs/example/se.py --cpu-type=RiscvO3CPU --num-cpus=2 --cpu-clock=4GHz --caches --cacheline_size 64 --l1i_size=32kB --l1i_assoc=8 --l1d_size=64kB --l1d_assoc=8 --l2cache --l2_size=2MB --l2_assoc=16 --l3cache --l3_size=8MB --l3_assoc=16 --cmd=benchmarks/riscv/LU  --options="-p2 -n512" &
echo ***Simming Radix
/gem5/build/RISCV/gem5.opt --outdir=out/riscv/major/Radix configs/example/se.py --cpu-type=RiscvO3CPU --num-cpus=2 --cpu-clock=4GHz --caches --cacheline_size 64 --l1i_size=32kB --l1i_assoc=8 --l1d_size=64kB --l1d_assoc=8 --l2cache --l2_size=2MB --l2_assoc=16 --l3cache --l3_size=8MB --l3_assoc=16 --cmd=benchmarks/riscv/RADIX  --options="-p2 -n1048576" &

# todo: write report
wait
