#/bin/bash --login

cd /home/z01/z01/aturner/regtest/compilers
module swap PrgEnv-cray PrgEnv-gnu
module list
rm -f hello_mpi.x
ftn -o hello_mpi.x hello_mpi.f90
if [ -x "./hello_mpi.x" ]; then
   exit 0
else
   exit 1
fi
