compile: tmp.fsproj
	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.fsharp-6.fsharp Program.fs
	dotnet build -c Release

compile2: tmp.fsproj
#	cp fannkuchredux.fsharpcore-6.fsharpcore Program.fs
	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.fsharp-5.fsharp Program.fs
	cp ../../benchmarksgame-sourcecode/fannkuchredux/fannkuchredux.fsharp-6.fsharp Program.fs
	dotnet build -c Release

tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 12" FSharp fannkuch-redux

run:
	dotnet bin/Release/net6.0/tmp.dll 21

mem:
	/usr/bin/time -v  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 12

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 12
