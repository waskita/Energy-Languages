compile:
	chpl --fast knucleotide-4.chpl -o knucleotide-4.chapel_run
compile2:
	chpl --fast -latomic knucleotide-4.chpl -o knucleotide-4.chapel_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./knucleotide.chapel_run --n=0 < ../../knucleotide-input25000000.txt" Chapel k-nucleotide

run:
	./knucleotide-4.chapel_run --n=0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v ./knucleotide.chapel_run --n=0 < ../../knucleotide-input25000000.txt


valgrind:
	valgrind --tool=massif --stacks=yes ./knucleotide.chapel_run --n=0 < ../../knucleotide-input25000000.txt

