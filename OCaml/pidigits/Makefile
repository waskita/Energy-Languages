compile:
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.ocaml-5.ocaml pidigits.ml
	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.ocaml-7.ocaml pidigits.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 -I /usr/local/lib/ocaml/gmp gmp.cmxa pidigits.ml -o pidigits
compile2:
	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.ocaml-5.ocaml pidigits.ml
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.ocaml-7.ocaml pidigits.ml
	ocamlopt -noassert -unsafe -nodynlink -inline 100 -I /usr/local/lib/ocaml/gmp gmp.cmxa pidigits.ml -o pidigits
	
xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "./pidigits 2000" OCaml pidigits

run:
	./pidigits 2000

mem:
	/usr/bin/time -v ../pidigits 2000

valgrind:
	valgrind --tool=massif --stacks=yes ./pidigits 2000
