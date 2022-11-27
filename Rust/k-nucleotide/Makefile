compile:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs knucleotide.rs -o knucleotide.rust-4.rust_run
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-4.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-5.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-6.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-7.rust knucleotide.rs
	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-8.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-9.rust knucleotide.rs # cannot compile
	cargo build --release
compile2:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs knucleotide.rs -o knucleotide.rust-4.rust_run
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-4.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-5.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-6.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-7.rust knucleotide.rs
	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-8.rust knucleotide.rs
#	cp ../../benchmarksgame-sourcecode/knucleotide/knucleotide.rust-9.rust knucleotide.rs # cannot compile
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/knucleotide 0 < ../../knucleotide-input25000000.txt" Rust k-nucleotide

run:
	./target/release/knucleotide 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v ./target/release/knucleotide 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/knucleotide 0 < ../../knucleotide-input25000000.txt
