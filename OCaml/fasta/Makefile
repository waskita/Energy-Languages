compile:
	cp ../../benchmarksgame-sourcecode/fasta/fasta.ocaml-3.ocaml fasta.ml
	cp ../../benchmarksgame-sourcecode/fasta/fasta.ocaml-6.ocaml fasta.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa fasta.ml -o fasta

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./fasta 25000000" OCaml fasta

run:
	./fasta 25000000

mem:
	/usr/bin/time -v  ./fasta 25000000

valgrind:
	valgrind --tool=massif --stacks=yes  ./fasta 25000000
