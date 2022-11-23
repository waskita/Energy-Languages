compile:
	/usr/local/src/chapel-1.15.0/bin/linux64/chpl --fast binarytrees-3.chpl -o binarytrees-3.chapel_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./binarytrees-3.chapel_run --n=21" Chapel binary-trees

run:
	./binarytrees-3.chapel_run --n=21

mem:
	/usr/bin/time -v ./binarytrees-3.chapel_run --n=21

valgrind:
	valgrind --tool=massif --stacks=yes ./binarytrees-3.chapel_run --n=21
