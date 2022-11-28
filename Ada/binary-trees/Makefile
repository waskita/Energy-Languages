RUNTIME = binarytrees.run

compile: $(RUNTIME)

clean:
	rm -f *.txt
	rm -f *.run *.ali *.adb *.ads *.o
	
$(RUNTIME):
	gnatchop -r -w binarytrees.gnat-4.gnat
	gnatmake -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp -f binarytrees.adb -o binarytrees.gnat-4.gnat_run -largs -lapr-1
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp binarytrees.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp trees.adb
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp apache_runtime.ads
	gcc -c -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -gnatNp apache_runtime-pools.adb
	gnatbind -x binarytrees.ali
	gnatlink binarytrees.ali -O3 -fomit-frame-pointer -march=native -msse3 -mfpmath=sse -o $(RUNTIME) -lapr-1

power: perf.txt

mem: memory.txt
 
perf.txt: $(RUNTIME)
	perf stat -o perf.txt -a -e cycles,power/energy-cores/,power/energy-pkg/,power/energy-ram/,power/energy-gpu/ ./$(RUNTIME) 21
	
run:
	./$(RUNTIME) 21

memory.txt: $(RUNTIME)
	/usr/bin/time -f "%M"  -o memory.txt ./$(RUNTIME) 21
	
