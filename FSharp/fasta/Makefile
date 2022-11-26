tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

compile: tmp.fsproj
	cp fasta.fsharpcore-3.fsharpcore Program.fs
	dotnet build -c Release
compile2: tmp.fsproj
	cp fasta.fsharpcore-3.fsharpcore Program.fs
	dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 25000000" FSharp fasta

run:
	dotnet bin/Release/net6.0/tmp.dll 25000000

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 25000000

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 25000000
