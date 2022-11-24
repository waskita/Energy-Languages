compile:
#	rustc -C opt-level=3 -C target-cpu=core2 -C lto -L /usr/local/src/rust-libs spectralnorm.rs -o spectralnorm.rust-4.rust_run
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust spectralnorm.rs
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust-2.rust spectralnorm.rs
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust-3.rust spectralnorm.rs
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust-4.rust spectralnorm.rs
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust-5.rust spectralnorm.rs
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust-6.rust spectralnorm.rs
	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.rust-7.rust spectralnorm.rs
	cargo build --release
clean:
	cargo clean

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./target/release/spectralnorm 5500" Rust spectral-norm

run:
	./target/release/spectralnorm 5500

mem:
	/usr/bin/time -v ./target/release/spectralnorm 5500

valgrind:
	valgrind --tool=massif --stacks=yes ./target/release/spectralnorm 5500
