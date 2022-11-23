compile:
	cp fannkuchredux.ghc-4.ghc fannkuchredux.ghc-4.hs
	ghc --make -fllvm -O2 -XBangPatterns -threaded -rtsopts -XScopedTypeVariables fannkuchredux.ghc-4.hs -o fannkuchredux.ghc-4.ghc_run
measure:
	sudo modprobe msr
	sudo ../../RAPL/main "./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12" Haskell fannkuch-redux

run:
	./fannkuchredux.ghc-4.ghc_run +RTS -N4 -RTS 12

mem:
	/usr/bin/time -v  ./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12

valgrind:
	valgrind --tool=massif --stacks=yes  ./fannkuchredux.ghc-3.ghc_run +RTS -N4 -RTS 12
