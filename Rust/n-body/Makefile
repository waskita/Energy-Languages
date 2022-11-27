compile:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -C llvm-args='-unroll-threshold=500' nbody.rs -o nbody.rust-2.rust_run
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-2.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-3.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-4.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-5.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-6.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-7.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-8.rust nbody.rs
#	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-9.rust nbody.rs
	cargo build --release
compile2:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -C llvm-args='-unroll-threshold=500' nbody.rs -o nbody.rust-2.rust_run
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-2.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-3.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-4.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-5.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-6.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-7.rust nbody.rs
	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-8.rust nbody.rs
#	cp ../../benchmarksgame-sourcecode/nbody/nbody.rust-9.rust nbody.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/nbody 50000000" Rust n-body

run:
	./target/release/nbody 50000000

mem:
	/usr/bin/time -v ./target/release/nbody 50000000

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/nbody 50000000
