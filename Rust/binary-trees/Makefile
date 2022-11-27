compile:
#	rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs binarytrees.rs -o binarytrees.rust-2.rust_run
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-2.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-3.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-4.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-5.rust binarytrees.rs
	cargo build --release
compile2:
#	rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs binarytrees.rs -o binarytrees.rust-2.rust_run
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-2.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-3.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-4.rust binarytrees.rs
	cp ../../benchmarksgame-sourcecode/binarytrees/binarytrees.rust-5.rust binarytrees.rs
	cargo build --release

clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/binarytrees 21" Rust binary-trees

run:
	./target/release/binarytrees  21

mem:
	/usr/bin/time -v ./target/release/binarytrees  21

valgrind:
	valgrind --tool=massif --stacks=yes  ./target/release/binarytrees   21 
