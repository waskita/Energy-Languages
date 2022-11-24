compile:
#	rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs fannkuchredux.rs -o fannkuchredux.rust-3.rust_run
	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.rust-6.rust  fannkuch-redux.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main " ./target/release/fannkuch-redux 12" Rust fannkuch-redux

run:
	./target/release/fannkuch-redux 12

mem:
	/usr/bin/time -v   ./target/release/fannkuch-redux  12

valgrind:
	valgrind --tool=massif --stacks=yes  ./target/release/fannkuch-redux  12
