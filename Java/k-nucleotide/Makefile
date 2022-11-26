compile:
#	javac -d . -cp .:../../fastutil-7.0.12.jar knucleotide.java
	javac -d . -cp .:../../fastutil-8.5.9.jar  knucleotide.java
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "java  -cp .:/usr/local/src/java-libs/fastutil-7.0.12.jar knucleotide 0 < ../../knucleotide-input25000000.txt" Java k-nucleotide

run:
	java  -cp .:../../fastutil-7.0.12.jar knucleotide 0 < ../../knucleotide-input25000000.txt

mem:
	/usr/bin/time -v  java  -cp .:/usr/local/src/java-libs/fastutil-7.0.12.jar knucleotide 0 < ../../knucleotide-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes  java  -cp .:/usr/local/src/java-libs/fastutil-7.0.12.jar knucleotide 0 < ../../knucleotide-input25000000.txt
