compile:
	chpl --fast revcomp-3.chpl -o revcomp-3.chapel_run
compile2:
	chpl --fast -latomic revcomp-3.chpl -o revcomp-3.chapel_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./revcomp-3.chapel_run --n=0 < ../../revcomp-input25000000.txt" Chapel reverse-complement

run:
	./revcomp-3.chapel_run --n=0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v ./revcomp-3.chapel_run --n=0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./revcomp-3.chapel_run --n=0 < ../../revcomp-input25000000.txt
