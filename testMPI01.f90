!-----------------------------------------------------------------------
program testMPI
!-----------------------------------------------------------------------
      include 'mpif.h'
!-----------------------------------------------------------------------
      integer(kind=4),parameter ::   inum = 1024
!-----------------------------------------------------------------------
      integer(kind=4) ::  ierr,nprocs,myrank
      integer(kind=4) ::  istart,iend,iblock
!-----------------------------------------------------------------------
!-----------------------------------------------------------------------
      call MPI_INIT(ierr)
      call MPI_COMM_SIZE(MPI_COMM_WORLD,nprocs,ierr)
      call MPI_COMM_RANK(MPI_COMM_WORLD,myrank,ierr)
!-----------------------------------------------------------------------
      iblock = inum/nprocs
      istart = myrank*iblock + 1
      iend   = istart + iblock - 1
!-----------------------------------------------------------------------
      write(6,'(8HNPROCS =,I5,2X,8HMYRANK =,I5,2X,8HISTART =,I5,2X, &
&               8HIEND   =,I5)') nprocs,myrank,istart,iend
!-----------------------------------------------------------------------
      call MPI_FINALIZE(ierr)
!-----------------------------------------------------------------------
!-----------------------------------------------------------------------
      stop
end program testMPI
