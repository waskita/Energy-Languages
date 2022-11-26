compile:
	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.ocaml mandelbrot.ml
	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.ocaml-6.ocaml mandelbrot.ml
	ocamlopt -noassert -unsafe -fPIC -nodynlink -inline 100 unix.cmxa mandelbrot.ml -o mandelbrot
compile2:
	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.ocaml mandelbrot.ml
	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.ocaml-6.ocaml mandelbrot.ml
	ocamlopt -noassert -unsafe -nodynlink -inline 100 unix.cmxa mandelbrot.ml -o mandelbrot

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./mandelbrot 16000" OCaml mandelbrot

run:
	./mandelbrot 16000

mem:
	/usr/bin/time -v ./mandelbrot 16000

valgrind:
	valgrind --tool=massif --stacks=yes ./mandelbrot 16000
