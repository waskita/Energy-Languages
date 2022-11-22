compile:
	go build -o revcomp.go-6.go_run revcomp.go-6.go
#	go build -o revcomp.go-5.go_run revcomp.go-5.go
#	go build -o revcomp.go-3.go_run revcomp.go-3.go
#	go build -o revcomp.go-2.go_run revcomp.go-2.go

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./revcomp.go-6.go_run 0 < ../../revcomp-input25000000.txt" Go reverse-complement

run:
	./revcomp.go-6.go_run 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v   ./revcomp.go-6.go_run 0 < ../../revcomp-input25000000.txt > test

valgrind:
	valgrind --tool=massif --stacks=yes   ./revcomp.go-6.go_run 0 < ../../revcomp-input25000000.txt
