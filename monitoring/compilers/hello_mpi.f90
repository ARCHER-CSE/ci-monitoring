! Example Hello World program
program hello_world
   use mpi
   implicit none

   ! Set up the variables
   integer :: irank, nrank
   integer :: iout, ierr
   character(len=5) :: cirank
   character(len=30) :: filename

   ! Initialize MPI and get my rank and total
   call mpi_init(ierr)
   call mpi_comm_rank(MPI_COMM_WORLD, irank, ierr)
   call mpi_comm_size(MPI_COMM_WORLD, nrank, ierr)

   ! Set the filename from this process and open for writing
   write(cirank, "(I0.5)") irank
   filename = "output"//cirank//".out"
   iout = 10 + irank
   open(unit=iout, file=filename, form="FORMATTED")

   ! Write the output
   write(iout,'(A,I5,A,I5)') "Hello from ", irank, " of ", nrank

   ! Close the output file and finalize MPI
   close(iout)
   call mpi_finalize(ierr)

end program hello_world
