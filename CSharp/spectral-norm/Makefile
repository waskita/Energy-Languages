compile:tmp.csproj
	cp spectralnorm.csharpcore-3.csharpcore Program.cs
	dotnet build -c Release
compile2:tmp.csproj
	cp spectralnorm.csharpcore-3.csharpcore Program.cs
	dotnet build -c Release
tmp.csproj:
	touch Program.cs
	rm Program.cs
	dotnet new console -o . -n tmp -lang C#

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "dotnet bin/Release/net6.0/tmp.dll 5500" CSharp spectral-norm

run:
	dotnet bin/Release/net6.0/tmp.dll 5500

mem:
	/usr/bin/time -v dotnet bin/Release/net6.0/tmp.dll 5500

valgrind:
	valgrind --tool=massif --stacks=yes dotnet bin/Release/net6.0/tmp.dll 5500
