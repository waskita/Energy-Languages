compile: tmp.fsproj
	cp mandelbrot.fsharp-6.fsharp Program.fs
#	cp mandelbrot.fsharpcore-3.fsharpcore Program.fs
	dotnet build -c Release
compile2:tmp.fsproj
	cp mandelbrot.fsharp-6.fsharp Program.fs
#	cp mandelbrot.fsharpcore-3.fsharpcore Program.fs
	dotnet build -c Release
tmp.fsproj:
	touch Program.fs
	rm Program.fs
	dotnet new console -o . -n tmp -lang F#
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 16000" FSharp mandelbrot

run:
	dotnet bin/Release/net6.0/tmp.dll 16000

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 16000

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 16000
