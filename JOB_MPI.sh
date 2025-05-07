#!/bin/sh
#PJM -L rscgrp=a-batch
#PJM -L node=2
#PJM -L "elapse=00:10:00"
#PJM -o ./job_out.txt
#PJM -j

module load intel
module load impi

date
mpiexec -np 8 -ppn 4 ./testmpi.exe
date
