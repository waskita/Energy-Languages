RUNTIME = binarytrees.run
OPTION = 21

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/g++ -c -pipe -O3 -fomit-frame-pointer -march=native  -std=c++14 -fopenmp -I/usr/include/apr-1.0 binarytrees.gpp-9.c++ -o binarytrees.gpp-9.c++.o &&  /usr/bin/g++ binarytrees.gpp-9.c++.o -fopenmp -lapr-1 -o $(RUNTIME) 
	
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null
	 
