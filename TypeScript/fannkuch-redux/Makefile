compile:
	cp fannkuchredux.typescript fannkuchredux.ts
#	tsc --alwaysStrict -t ESNEXT  fannkuchredux.ts
	tsc fannkuchredux.ts

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict fannkuchredux.js 12" TypeScript fannkuch-redux

run:
	node --use_strict fannkuchredux.js 12

clean:
	rm -rf *.js *.ts

mem:
	/usr/bin/time -v /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict fannkuchredux.js 12

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict fannkuchredux.js 12
