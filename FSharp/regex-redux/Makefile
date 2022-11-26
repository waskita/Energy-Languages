compile: tmp.fsproj
	cp regexredux.fsharpcore-2.fsharpcore Program.fs
	cp regexredux.fsharp-6.fsharp Program.fs
	dotnet build -c Release
compile2: tmp.fsproj
	cp regexredux.fsharpcore-2.fsharpcore Program.fs
	cp regexredux.fsharp-6.fsharp Program.fs
	dotnet build -c Release

tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 0 < ../../regexredux-input5000000.txt" FSharp regex-redux

run:
	dotnet bin/Release/net6.0/tmp.dll 0 < ../../regexredux-input5000000.txt

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 0 < ../../regexredux-input5000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 0 < ../../regexredux-input5000000.txt
