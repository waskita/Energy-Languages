compile:
#	/usr/local/src/rust-1.16.0/bin/rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs regexredux.rs -o regexredux.rust_run

#	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust regexredux.rs
#	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust-2.rust  regexredux.rs
#	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust-3.rust  regexredux.rs
#	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust-4.rust regexredux.rs
#	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust-5.rust regexredux.rs
#	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust-6.rust regexredux.rs
	cp ../../benchmarksgame-sourcecode/regexredux/regexredux.rust-7.rust regexredux.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/regexredux 0 < ../../regexredux-input5000000.txt" Rust regex-redux

run:
	./target/release/regexredux 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v ./target/release/regexredux  0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/regexredux  0 < ../../regexredux-input5000000.txt
