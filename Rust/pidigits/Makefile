compile:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto  pidigits.rs -o pidigits.rust-2.rust_run

#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust pidigits.rs
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust-2.rust pidigits.rs
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust-3.rust pidigits.rs
	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust-4.rust pidigits.rs
	cargo build --release
compile2:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto  pidigits.rs -o pidigits.rust-2.rust_run

#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust pidigits.rs
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust-2.rust pidigits.rs
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust-3.rust pidigits.rs
	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.rust-4.rust pidigits.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/pidigits 10000" Rust pidigits

run:
	./target/release/pidigits 10000

mem:
	/usr/bin/time -v ./target/release/pidigits  10000

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/pidigits  10000
