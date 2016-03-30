#/bin/bash --login

cd /home/z01/z01/aturner/regtest/compilers
module list
rm -f hello_mpi.x
ftn -o hello_mpi.x hello_mpi.f90
if [ -x "./hello_mpi.x" ]; then
   rm -f hello_mpi.x
   exit 0
else
   exit 1
fi
