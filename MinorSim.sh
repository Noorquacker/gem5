#!/bin/sh

echo starting x86
echo ***Simming FFT
/gem5/build/X86/gem5.opt --outdir=out/x86/minor/FFT configs/example/se.py --cpu-type=X86MinorCPU --num-cpus=1 --cpu-clock=1GHz --caches --cacheline_size 64 --l1i_size=8kB --l1i_assoc=4 --l1d_size=16kB --l1d_assoc=4 --cmd=benchmarks/x86/FFT  --options="-p1 -m16" &
echo ***Simming LU
/gem5/build/X86/gem5.opt --outdir=out/x86/minor/LU configs/example/se.py --cpu-type=X86MinorCPU --num-cpus=1 --cpu-clock=1GHz --caches --cacheline_size 64 --l1i_size=8kB --l1i_assoc=4 --l1d_size=16kB --l1d_assoc=4 --cmd=benchmarks/x86/LU  --options="-p1 -n512" &
echo ***Simming Radix
/gem5/build/X86/gem5.opt --outdir=out/x86/minor/Radix configs/example/se.py --cpu-type=X86MinorCPU --num-cpus=1 --cpu-clock=1GHz --caches --cacheline_size 64 --l1i_size=8kB --l1i_assoc=4 --l1d_size=16kB --l1d_assoc=4 --cmd=benchmarks/x86/RADIX  --options="-p1 -n1048576" &

echo starting riscv
echo ***Simming FFT
/gem5/build/RISCV/gem5.opt --outdir=out/riscv/minor/FFT configs/example/se.py --cpu-type=RiscvMinorCPU --num-cpus=1 --cpu-clock=1GHz --caches --cacheline_size 64 --l1i_size=8kB --l1i_assoc=4 --l1d_size=16kB --l1d_assoc=4 --cmd=benchmarks/riscv/FFT  --options="-p1 -m16" &
echo ***Simming LU
/gem5/build/RISCV/gem5.opt --outdir=out/riscv/minor/LU configs/example/se.py --cpu-type=RiscvMinorCPU --num-cpus=1 --cpu-clock=1GHz --caches --cacheline_size 64 --l1i_size=8kB --l1i_assoc=4 --l1d_size=16kB --l1d_assoc=4 --cmd=benchmarks/riscv/LU  --options="-p1 -n512" &
echo ***Simming Radix
/gem5/build/RISCV/gem5.opt --outdir=out/riscv/minor/Radix configs/example/se.py --cpu-type=RiscvMinorCPU --num-cpus=1 --cpu-clock=1GHz --caches --cacheline_size 64 --l1i_size=8kB --l1i_assoc=4 --l1d_size=16kB --l1d_assoc=4 --cmd=benchmarks/riscv/RADIX  --options="-p1 -n1048576" &

# todo: powerful cpus
wait
