RUNTIME = binarytrees.run

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -fopenmp -D_FILE_OFFSET_BITS=64 -I/usr/include/apr-1.0 binarytrees.gcc-3.c -o $(RUNTIME) -lapr-1 -lgomp -lm
	
power: perf.txt
 
perf.txt: $(RUNTIME)
#	sudo modprobe msr
#	sudo ../../RAPL/main "./binarytrees 21" C binary-trees
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) 21
	
run:
	./$(RUNTIME) 21 > output.txt

mem: memory.txt

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) 21
