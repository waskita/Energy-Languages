compile: tmp.fsproj
	cp pidigits.fsharpcore-3.fsharpcore Program.fs
#	cp pidigits.fsharp-6.fsharp Program.fs
	dotnet build -c Release
compile2: tmp.fsproj	
	cp pidigits.fsharpcore-3.fsharpcore Program.fs
#	cp pidigits.fsharp-6.fsharp Program.fs
	dotnet build -c Release
tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 10000" FSharp pidigits

run:
	dotnet bin/Release/net6.0/tmp.dll 10000

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 10000

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 10000
