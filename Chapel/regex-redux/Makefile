compile:
	/usr/local/src/chapel-1.15.0/bin/linux64/chpl --fast regexredux-3.chpl -o regexredux-3.chapel_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./regexredux-3.chapel_run --n=0 < ../../regexredux-input5000000.txt" Chapel regex-redux

run:
	./regexredux.chapel_run --n=0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v ./regexredux-3.chapel_run --n=0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./regexredux-3.chapel_run --n=0 < ../../regexredux-input5000000.txt
