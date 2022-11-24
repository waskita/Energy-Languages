compile:
	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.typescript              spectralnorm.ts
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.typescript-6.typescript spectralnorm.ts
#	cp ../../benchmarksgame-sourcecode/spectralnorm/spectralnorm.typescript-7.typescript spectralnorm.ts

#	tsc --alwaysStrict -t ESNEXT  spectralnorm.ts
	tsc spectralnorm.ts

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict spectralnorm.js 5500" TypeScript spectral-norm

run:
	node --use_strict spectralnorm.js 5500

clean:
	rm -rf *.js *.ts

mem:
	/usr/bin/time -v /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict spectralnorm.js 5500

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict spectralnorm.js 5500

