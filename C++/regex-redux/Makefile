RUNTIME = knucleotide.run
OPTION =  0 < ../../regexredux-input5000000.txt

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/g++ -c -pipe -O3 -fomit-frame-pointer -march=native  -fopenmp regexredux.gpp-3.c++ -o regexredux.gpp-3.c++.o &&  /usr/bin/g++ regexredux.gpp-3.c++.o -o $(RUNTIME) -fopenmp -lboost_regex
	
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null
	 

