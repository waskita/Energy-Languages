RUNTIME = revcomp.run
OPTION = 0 < ../../revcomp-input25000000.txt

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	rm -f *.run *.ali *.adb *.ads *.o
	
$(RUNTIME):
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -funroll-loops -fopenmp revcomp.gcc-6.c -o  $(RUNTIME)

power: perf.txt
 
perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION) > output.txt

mem: memory.txt

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null
