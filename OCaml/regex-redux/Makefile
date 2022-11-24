compile:
	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.ocaml-2.ocaml regexredux.ml
	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.ocaml-3.ocaml regexredux.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa str.cmxa regexredux.ml -o regexredux
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./regexredux.ocaml-2.ocaml_run 0 < ../../regexredux-input5000000.txt" OCaml regex-redux

run:
	./regexredux.ocaml-2.ocaml_run 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v  /usr/bin/time -v  /usr/bin/time -v  ./regexredux.ocaml-2.ocaml_run 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/time -v  ./regexredux.ocaml-2.ocaml_run 0 < ../../regexredux-input5000000.txt
