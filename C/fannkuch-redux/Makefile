RUNTIME = fannkuchredux.run

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -std=c99 -fopenmp fannkuchredux.gcc-5.c -o $(RUNTIME)
	
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) 12
	
run:
	./$(RUNTIME) 12 > output.txt

mem: memory.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) 12
	 



