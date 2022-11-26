compile: tmp.csproj
compile2: tmp.csproj
	cp binarytrees.csharpcore-4.csharpcore Program.cs
	dotnet build -c Release

tmp.csproj:
	rm Program.fs
	dotnet new console -o . -n tmp -lang C#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "/usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 21" CSharp binary-trees

run:
	dotnet bin/Release/net6.0/tmp.dll 21

mem:
	/usr/bin/time -v  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 21

valgrind:
	valgrind --tool=massif --stacks=yes  /usr/bin/dotnet ./bin/Release/netcoreapp1.1/tmp.dll 21
