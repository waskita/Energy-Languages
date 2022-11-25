compile:
	ifort -O3 -xHost -ipo -lgmp pidigits.ifc-4.f90 -o pidigits.ifc-4.ifc_run
compile2:
	gfortran -O3 -lgmp pidigits.ifc-4.f90 -o pidigits.ifc-4.ifc_run
xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "./pidigits.ifc-4.ifc_run 10000" Fortran pidigits

run:
	./pidigits.ifc-4.ifc_run 10000

mem:
	/usr/bin/time -v  ./pidigits.ifc-4.ifc_run 10000

valgrind:
	valgrind --tool=massif --stacks=yes  ./pidigits.ifc-4.ifc_run 10000
