#/bin/bash --login

pwd
module swap PrgEnv-cray PrgEnv-gnu
module list
rm -f hello_mpi.x
ftn -o hello_mpi.x hello_mpi.f90
if [ -x "./hello_mpi.x" ]; then
   ls -l hello_mpi.x
   rm -f hello_mpi.x
   exit 0
else
   exit 1
fi
