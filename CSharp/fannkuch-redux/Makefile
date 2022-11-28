RUNTIME = bin/Release/net6.0/tmp
RPI_RUNTIME = binarytrees.rpi_run
OPTION = 12

compile: $(RUNTIME)

rpi_compile: $(RPI_RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run
	rm -rf bin obj
	
$(RUNTIME): tmp.csproj
	cp fannkuchredux.csharpcore-4.csharpcore Program.cs
	dotnet build -c Release
		
$(RPI_RUNTIME):	tmp.csproj
	chpl --fast -latomic fannkuchredux.chpl -o $(RPI_RUNTIME)
		
tmp.csproj:
	rm -f Program.cs
	dotnet new console -o . -n tmp -lang C#
	
power: perf.txt

perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) $(OPTION) > /dev/null
	
run:
	./$(RUNTIME) $(OPTION)  > output.txt

mem: memory.txt 

rpi_mem: memory_rpi.txt 

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt  ./$(RUNTIME) $(OPTION) > /dev/null	

rpi_perf.txt: $(RUNTIME)
	perf stat -o rpi_perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RPI_RUNTIME) $(OPTION) > /dev/null	

rpi_memory.txt: $(RPI_RUNTIME)
	/usr/bin/time -f "%M"  -o rpi_memory.txt ./$(RPI_RUNTIME) $(OPTION) > /dev/null		
	
rpi_run:
	./$(RUNTIME) $(OPTION)  > rpi_output.txt
	