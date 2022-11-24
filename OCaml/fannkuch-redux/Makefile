compile:
#	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.ocaml          fannkuchredux.ml
#	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.ocaml-2.ocaml  fannkuchredux.ml
#	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.ocaml-3.ocaml  fannkuchredux.ml
	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.ocaml-4.ocaml  fannkuchredux.ml

	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 -O3 unix.cmxa -ccopt -march=ivybridge fannkuchredux.ml -o fannkuchredux
	rm fannkuchredux.ml

#	cp fannkuchredux.ocaml-4.ocaml fannkuchredux.ocaml-4.ml
#	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa fannkuchredux.ocaml-4.ml -o fannkuchredux.ocaml-4.ocaml_run
#	rm fannkuchredux.ocaml-4.ml

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./fannkuchredux.ocaml-4.ocaml_run 12" OCaml fannkuch-redux

run:
	./fannkuchredux.ocaml-4.ocaml_run 12

mem:
	/usr/bin/time -v ./fannkuchredux.ocaml-4.ocaml_run 12

valgrind:
	valgrind --tool=massif --stacks=yes ./fannkuchredux.ocaml-4.ocaml_run 12
