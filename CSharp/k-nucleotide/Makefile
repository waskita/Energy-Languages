compile: tmp.csproj
	cp knucleotide.csharpcore-6.csharpcore Program.cs
	dotnet build -c Release
compile: tmp.csproj
	cp knucleotide.csharpcore-6.csharpcore Program.cs
	dotnet build -c Release
tmp.csproj:
	touch Program.cs
	rm Program.cs
	dotnet new console -o . -n tmp -lang C#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 0 < ../../knucleotide-input25000000.txt" CSharp k-nucleotide

run:
	dotnet bin/Release/net6.0/tmp.dll 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 0 < ../../knucleotide-input25000000.txt
