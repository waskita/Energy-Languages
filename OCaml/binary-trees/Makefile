compile:
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.ocaml-2.ocaml binarytrees.ml
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.ocaml-5.ocaml binarytrees.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa binarytrees.ml -o binarytrees
	rm binarytrees.ml
	
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./binarytrees 21" OCaml binary-trees

run:
	./binarytrees 21

mem:
	/usr/bin/time -v ./binarytrees 21

valgrind:
	valgrind --tool=massif --stacks=yes ./binarytrees 21
