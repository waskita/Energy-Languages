compile:
	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.jruby revcomp.jruby
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.jruby-2.jruby revcomp.jruby
#	cp ../../benchmarksgame-sourcecode/revcomp/revcomp.jruby-3.jruby revcomp.jruby
#	cp revcomp.jruby revcomp.rb

measure:
	sudo modprobe msr
	sudo ../../RAPL/main "jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m revcomp.rb 0 < ../../revcomp-input25000000.txt" JRuby reverse-complement

run:
	jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m revcomp.rb 0 < ../../revcomp-input25000000.txt

mem:
	/usr/bin/time -v jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m revcomp.rb 0 < ../../revcomp-input25000000.txt

valgrind:
	valgrind --tool=massif --stacks=yes jruby -Xcompile.fastest=true -Xcompile.invokedynamic=true -J-server -J-Xmn512m -J-Xms2048m -J-Xmx2048m revcomp.rb 0 < ../../revcomp-input25000000.txt
