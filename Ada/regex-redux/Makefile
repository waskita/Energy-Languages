compile:
	gnatchop -r -w regexredux.gnat-5.gnat
	gnatmake -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp -f regexredux.adb -o regexredux.gnat-5.gnat_run 
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp regexredux.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp block_input.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp dna.ads
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp dna-matching.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp dna-replacing.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp preprocessing.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp u.ads
	gnatbind -x regexredux.ali
	gnatlink regexredux.ali -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -o regexredux.gnat-5.gnat_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./regexredux.gnat-5.gnat_run 0 < ../../regexredux-input5000000.txt" Ada regex-redux

run:
	./regexredux.gnat-5.gnat_run 0 < ../../regexredux-input5000000.txt
	
mem:
	/usr/bin/time -v ./regexredux.gnat-5.gnat_run 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes ./regexredux.gnat-5.gnat_run 0 < ../../regexredux-input5000000.txt
