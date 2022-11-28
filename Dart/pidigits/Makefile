RUNTIME = pidigits.dart
RPI_RUNTIME = binarytrees.rpi_run
OPTION =  10000

compile: $(RUNTIME)
	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.dart-2.dart pidigits.dart
#	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.dart-3.dart pidigits.dart

rpi_compile: $(RPI_RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	rm -rf bin obj
	
$(RUNTIME): 
		
$(RPI_RUNTIME):	
	
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ dart ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	dart ./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

rpi_mem: memory_rpi.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt  dart ./$(RUNTIME) $(OPTION) > /dev/null	

rpi_perf.txt: $(RUNTIME)
	perf stat -o rpi_perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ dart ./$(RPI_RUNTIME) $(OPTION) > /dev/null	

rpi_memory.txt: $(RPI_RUNTIME)
	/usr/bin/time -f "%M"  -o rpi_memory.txt dart ./$(RPI_RUNTIME) $(OPTION) > /dev/null		
	
rpi_run:
	dart ./$(RUNTIME) $(OPTION)  > rpi_output.txt
		
