compile:
	/usr/local/src/chapel-1.15.0/bin/linux64/chpl --fast nbody-3.chpl -o nbody-3.chapel_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./nbody-3.chapel_run --n=50000000" Chapel n-body

run:
	./nbody-3.chapel_run --n=50000000

mem:
	/usr/bin/time -v ./nbody-3.chapel_run --n=50000000

valgrind:
	valgrind --tool=massif --stacks=yes ./nbody-3.chapel_run --n=50000000
