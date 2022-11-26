compile: tmp.fsproj
	cp binarytrees.fsharpcore-7.fsharpcore Program.fs
	dotnet build -c Release

compile2: tmp.fsproj
	cp binarytrees.fsharpcore-7.fsharpcore Program.fs
	dotnet build -c Release	

tmp.fsproj:
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet ./bin/Release/net6.0/tmp.dll 21" FSharp binary-trees

run:
	dotnet bin/Release/net6.0/tmp.dll 21

clean:
	rm *.dll
	rm *.json
	rm -rf bin
	rm -rf obj
mem:
	/usr/bin/time -v /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 21

valgrind:
	valgrind --tool=massif --stacks=yes /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 21
