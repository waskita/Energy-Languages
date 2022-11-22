compile:
	go build -o regexredux.go-3.go_run regexredux.go-3.go 

xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "./regexredux.go-3.go_run 0 < ../../regexredux-input5000000.txt" Go regex-redux

run:
	./regexredux.go-3.go_run 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v ./regexredux.go-3.go_run 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./regexredux.go-3.go_run 0 < ../../regexredux-input5000000.txt
