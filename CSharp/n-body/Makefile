compile: tmp.csproj
	cp nbody.csharpcore-3.csharpcore Program.cs
	dotnet build -c Release
compile2: tmp.csproj
	cp nbody.csharpcore-3.csharpcore Program.cs
	dotnet build -c Release

tmp.csproj:
	touch Program.cs
	rm Program.cs
	dotnet new console -o . -n tmp -lang C#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 50000000" CSharp n-body

run:
	dotnet bin/Release/net6.0/tmp.dll 50000000

mem:
	/usr/bin/time -v  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 50000000

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 50000000
