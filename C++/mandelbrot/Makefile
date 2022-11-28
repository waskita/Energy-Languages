RUNTIME = knucleotide.run
OPTION = 16000

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/g++ -c -pipe -O3 -fomit-frame-pointer -march=native -mfpmath=sse -msse2 -mfpmath=sse -msse2 -fopenmp -mno-fma --std=c++14 mandelbrot.gpp-6.c++ -o mandelbrot.gpp-6.c++.o &&  /usr/bin/g++ mandelbrot.gpp-6.c++.o -fopenmp  -o $(RUNTIME) 
	
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null
	 

