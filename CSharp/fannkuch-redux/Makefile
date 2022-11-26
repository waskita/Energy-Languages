compile: tmp.csproj
compile2:  tmp.csproj
	cp fannkuchredux.csharpcore-4.csharpcore Program.cs
	dotnet build -c Release

tmp.csproj:
	rm Program.fs
	dotnet new console -o . -n tmp -lang C#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 12" CSharp fannkuch-redux

run:
	dotnet bin/Release/net6.0/tmp.dll 12

mem:
	/usr/bin/time -v  / dotnet bin/Release/net6.0/tmp.dll 12 

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 12
