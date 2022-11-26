compile:
	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml         revcomp.ml 
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml-2.ocaml revcomp.ml
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml-3.ocaml revcomp.ml
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml-4.ocaml revcomp.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa revcomp.ml -o revcomp
compile2:
	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml         revcomp.ml 
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml-2.ocaml revcomp.ml
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml-3.ocaml revcomp.ml
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.ocaml-4.ocaml revcomp.ml
	ocamlopt -noassert -unsafe -nodynlink -inline 100 unix.cmxa revcomp.ml -o revcomp
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./revcomp 0 < ../../revcomp-input25000000.txt" OCaml reverse-complement

run:
	./revcomp 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v  ./revcomp 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  ./revcomp 0 < ../../revcomp-input25000000.txt
