RUNTIME = fannkuchredux.run
OPTION = 12

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/g++ -c -pipe -O3 -fomit-frame-pointer -march=native  -std=c++11 -fopenmp fannkuchredux.gpp-5.c++ -o fannkuchredux.gpp-5.c++.o &&  /usr/bin/g++ fannkuchredux.gpp-5.c++.o -o $(RUNTIME) -fopenmp 

power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null
	 
