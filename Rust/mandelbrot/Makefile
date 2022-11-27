compile:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs mandelbrot.rs -o mandelbrot.rust-4.rust_run
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-3.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-5.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-6.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-7.rust mandelbrot.rs
	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-8.rust mandelbrot.rs
	cargo build --release
compile2:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs mandelbrot.rs -o mandelbrot.rust-4.rust_run
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-3.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-5.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-6.rust mandelbrot.rs
#	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-7.rust mandelbrot.rs
	cp ../../benchmarksgame-sourcecode/mandelbrot/mandelbrot.rust-8.rust mandelbrot.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/mandelbrot 16000" Rust mandelbrot

run:
	./target/release/mandelbrot 16000

mem:
	/usr/bin/time -v  ./target/release/mandelbrot 16000

valgrind:
	valgrind --tool=massif --stacks=yes  ./target/release/mandelbrot 16000
