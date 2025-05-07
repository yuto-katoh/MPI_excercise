FC = mpiifort
FFLAGS = -xCORE-AVX512
LINKER = $(FC)
all : testmpi.exe
testmpi.exe : testMPI01.o
	$(LINKER) -o testmpi.exe testMPI01.o
testMPI01.o : testMPI01.f90
	$(LINKER) -c testMPI01.f90

clean:
	rm -f *.o *.mod
