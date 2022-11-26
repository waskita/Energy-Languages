compile: tmp.fsproj
	cp nbody.fsharpcore Program.fs
#	cp nbody.fsharp-5.fsharp Program.fs
#	cp nbody.fsharp-6.fsharp Program.fs
#	cp nbody.fsharpcore-6.fsharpcore Program.fs
	dotnet build -c Release
compile2: tmp.fsproj
	cp nbody.fsharpcore Program.fs
#	cp nbody.fsharp-5.fsharp Program.fs
#	cp nbody.fsharp-6.fsharp Program.fs
#	cp nbody.fsharpcore-6.fsharpcore Program.fs
	dotnet build -c Release
tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 50000000" FSharp n-body

run:
	dotnet bin/Release/net6.0/tmp.dll  50000000

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 50000000

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 50000000
