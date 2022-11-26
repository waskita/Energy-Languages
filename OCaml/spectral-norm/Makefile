compile:
	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.ocaml-2.ocaml spectralnorm.ml
#	cp spectralnorm.ocaml-3.ocaml spectralnorm.ocaml-3.ml
#	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa bigarray.cmxa spectralnorm.ocaml-3.ml -o spectralnorm.ocaml-3.ocaml_run
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa bigarray.cmxa spectralnorm.ml -o spectralnorm
compile2:
	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.ocaml-2.ocaml spectralnorm.ml
#	cp spectralnorm.ocaml-3.ocaml spectralnorm.ocaml-3.ml
#	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa bigarray.cmxa spectralnorm.ocaml-3.ml -o spectralnorm.ocaml-3.ocaml_run
	ocamlopt -noassert -unsafe -nodynlink -inline 100 unix.cmxa bigarray.cmxa spectralnorm.ml -o spectralnorm

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./spectralnorm 5500" OCaml spectral-norm

run:
	./spectralnorm 5500

mem:
	/usr/bin/time -v ./spectralnorm 5500

valgrind:
	valgrind --tool=massif --stacks=yes ./spectralnorm 5500
