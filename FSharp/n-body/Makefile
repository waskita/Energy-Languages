compile:	
	cp nbody.fsharpcore Program.fs
#	cp nbody.fsharp-5.fsharp Program.fs
#	cp nbody.fsharp-6.fsharp Program.fs
#	cp nbody.fsharpcore-6.fsharpcore Program.fs
	/usr/bin/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/bin/dotnet ./bin/Release/net6.0/tmp.dll 50000000" FSharp n-body

run:
	/usr/bin/dotnet ./bin/Release/net6.0/tmp.dll 50000000

mem:
	/usr/bin/time -v /usr/bin/dotnet ./bin/Release/net6.0/tmp.dll 50000000

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/dotnet ./bin/Release/net6.0/tmp.dll 50000000
