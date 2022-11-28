RUNTIME = fannkuchredux.run

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	rm -f *.run *.ali *.adb *.ads *.o
	
$(RUNTIME):
	gnatchop -r -w fannkuchredux.gnat-3.gnat
	gnatmake -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp -f fannkuchredux.adb -o fannkuchredux.gnat-3.gnat_run 
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp fannkuchredux.adb
	gnatbind -x fannkuchredux.ali
	gnatlink fannkuchredux.ali -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -o $(RUNTIME)
	
power: perf.txt
 
perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) 12
	
run:
	./$(RUNTIME) 12

mem: memory.txt

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) 12
