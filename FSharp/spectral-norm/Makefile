compile:	
	cp spectralnorm.fsharpcore-2.fsharpcore Program.fs
	/usr/bin/dotnet build -c Release

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./bin/Release/net6.0/tmp 5500" FSharp spectral-norm

run:
	./bin/Release/net6.0/tmp 5500

mem:
	/usr/bin/time -v  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 5500

valgrind:
	valgrind --tool=massif --stacks=yes  ./bin/Release/net6.0/tmp 5500
