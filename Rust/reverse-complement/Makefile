compile:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs revcomp.rs -o revcomp.rust-2.rust_run
	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.rust revcomp.rs
	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.rust-2.rust revcomp.rs
	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.rust-3.rust revcomp.rs
	cargo build --release
clean:
	cargo clean


measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/revcomp  0 < ../../revcomp-input25000000.txt" Rust reverse-complement

run:
	./target/release/revcomp 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v ./target/release/revcomp 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/revcomp  0 < ../../revcomp-input25000000.txt
