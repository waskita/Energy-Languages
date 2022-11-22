compile:	
	cp revcomp.fsharpcore Program.fs
	cp revcomp.fsharp-5.fsharp Program.fs
	/usr/bin/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./bin/Release/net6.0/tmp 0 < ../../revcomp-input25000000.txt" FSharp reverse-complement

run:
	./bin/Release/net6.0/tmp 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v  ./bin/Release/net6.0/tmp 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  ./bin/Release/net6.0/tmp  0 < ../../revcomp-input25000000.txt
