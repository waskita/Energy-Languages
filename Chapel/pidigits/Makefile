RUNTIME = pidigits.run
RPI_RUNTIME = pidigits.rpi_run
OPTION = --n=10000

compile: $(RUNTIME)

rpi_compile: $(RPI_RUNTIME)

comp2:
	@+if [ "$(CHPL_MAKE_GMP)" != "none" ]; then \
	$(CHPL) -o $@ $(CHPL_FLAGS) $<; \
	else \
	echo "";\
	echo $(CHPL_MAKE_GMP) \
	echo "Can't build pidigits without CHPL_GMP being enabled. See for details:"; \
	echo "http://chapel.cray.com/docs/latest/usingchapel/chplenv.html#chpl-gmp"; \
	echo ""; \
	fi

clean:
	rm -f *.txt
	rm -f *.run
	
$(RUNTIME):
	chpl --fast pidigits.chapel-2.chpl -o $(RUNTIME)
	
$(RPI_RUNTIME):	
	chpl --fast -latomic pidigits.chapel-2.chpl -o $(RPI_RUNTIME)
		
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

rpi_mem: memory_rpi.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) $(OPTION) > /dev/null	

rpi_perf.txt: $(RUNTIME)
	perf stat -o rpi_perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RPI_RUNTIME) $(OPTION) > /dev/null	

rpi_memory.txt: $(RPI_RUNTIME)
	/usr/bin/time -f "%M"  -o rpi_memory.txt ./$(RPI_RUNTIME) $(OPTION) > /dev/null		
	
rpi_run:
	./$(RUNTIME) $(OPTION)  > rpi_output.txt
		
