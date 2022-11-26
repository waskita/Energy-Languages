compile:
	cp ../../benchmarksgame-sourcecode/pidigits/pidigits.java pidigits.java
#       cp ../../benchmarksgame-sourcecode/pidigits/pidigits.java-2.java pidigits.java
#       cp ../../benchmarksgame-sourcecode/pidigits/pidigits.java-3.java pidigits.java	
	javac -d .  -Xlint:deprecation pidigits.java
xmeasure:
	sudo modprobe msr
	sudo ../../RAPL/main "java -Djava.library.path=Include/java  pidigits 10000" Java pidigits

run:
	java -Djava.library.path=./ pidigits 10000

mem:
	/usr/bin/time -v java -Djava.library.path=Include/java  pidigits 10000

valgrind:
	valgrind --tool=massif --stacks=yes java -Djava.library.path=Include/java  pidigits 10000

