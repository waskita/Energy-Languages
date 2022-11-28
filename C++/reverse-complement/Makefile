RUNTIME = revcomp.run
OPTION = 0 < ../../revcomp-input25000000.txt

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	/usr/bin/g++ -c -pipe -O3 -fomit-frame-pointer -march=native  -std=c++11 -mtune=native -mfpmath=sse -msse2 revcomp.gpp-4.c++ -o revcomp.gpp-4.c++.o &&  /usr/bin/g++ revcomp.gpp-4.c++.o -o  $(RUNTIME) -pthread
		
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null	