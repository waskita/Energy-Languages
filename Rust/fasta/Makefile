compile:
	#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs fasta.rs -o fasta.rust-2.rust_run
	#	cp  fasta.rs src/main.rs
	cp ../../benchmarksgame-sourcecode/fasta/fasta.rust-7.rust fasta.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/fasta 25000000" Rust fasta

run:
	./target/release/fasta 25000000

mem:
	/usr/bin/time -v ./target/release/fasta 25000000

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/fasta 25000000
