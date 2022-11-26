compile: tmp.fsproj	
	cp revcomp.fsharpcore Program.fs
	cp revcomp.fsharp-5.fsharp Program.fs
	dotnet build -c Release
compile2: tmp.fsproj
	cp revcomp.fsharpcore Program.fs
	cp revcomp.fsharp-5.fsharp Program.fs
	dotnet build -c Release
tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 0 < ../../revcomp-input25000000.txt" FSharp reverse-complement

run:
	dotnet bin/Release/net6.0/tmp.dll 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 0 < ../../revcomp-input25000000.txt
