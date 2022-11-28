RUNTIME = spectralnorm.run
OPTION = 5500

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	rm -f *.run *.ali *.adb *.ads *.o
	
$(RUNTIME):
	/usr/bin/gcc -pipe -Wall -O3 -fomit-frame-pointer -march=native -fopenmp -mfpmath=sse -msse2 spectralnorm.gcc-4.c  -lm -o $(RUNTIME)

power: perf.txt
 
perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION) > output.txt

mem: memory.txt

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null

