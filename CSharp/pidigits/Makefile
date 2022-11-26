compile: tmp.csproj
	cp pidigits.csharpcore-3.csharpcore Program.cs
	dotnet build -c Release
compile2: tmp.csproj
	cp pidigits.csharpcore-3.csharpcore Program.cs
	dotnet build -c Release
tmp.csproj:
	touch Program.cs
	rm Program.cs
	dotnet new console -o . -n tmp -lang C#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 10000" CSharp pidigits

run:
	dotnet bin/Release/net6.0/tmp.dll 10000

mem:
	/usr/bin/time -v  dotnet bin/Release/net6.0/tmp.dll 10000

valgrind:
	valgrind --tool=massif --stacks=yes  dotnet bin/Release/net6.0/tmp.dll 10000
