compile:
	cp fasta.typescript fasta.ts
#	tsc --alwaysStrict -t ESNEXT  fasta.ts
	tsc fasta.ts

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict fasta.js 25000000" TypeScript fasta

run:
	node --use_strict fasta.js 25000000

clean:
	rm -rf *.js *.ts

mem:
	/usr/bin/time -v /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict fasta.js 25000000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/local/src/node-v7.9.0-linux-x64/bin/node --use_strict fasta.js 25000000
