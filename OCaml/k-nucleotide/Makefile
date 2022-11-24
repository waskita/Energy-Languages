compile:
	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.ocaml knucleotide.ml
	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.ocaml-2.ocaml knucleotide.ml
	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.ocaml-3.ocaml knucleotide.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa knucleotide.ml -o knucleotide

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./knucleotide 0 < ../../knucleotide-input25000000.txt" OCaml k-nucleotide

run:
	./knucleotide 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v ./knucleotide 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./knucleotide 0 < ../../knucleotide-input25000000.txt
