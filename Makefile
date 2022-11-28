LANGUAGES = Ada C C++ Chapel CSharp Dart Erlang Fortran FSharp Go Hack Haskell Java  JavaScript JRuby Julia Lisp Lua OCaml Pascal Perl PHP Python Racket Ruby Rust  Swift TypeScript
#skipped: Java-GraalVM Smalltalk
	
# https://stackoverflow.com/questions/66851784/how-do-i-loop-through-a-string-in-makefile	
compile:
	for n in $(LANGUAGES); do \
		echo "$$n"; \
		make -C $$n compile; \
	done

clean:
	make -C Ada           clean
	make -C C             clean
	make -C C++           clean
	make -C Chapel        clean
	make -C CSharp        clean
	make -C Dart          clean
	make -C Erlang        clean
	make -C Fortran       clean
	make -C FSharp        clean
	make -C Go            clean
	make -C Hack          clean
	make -C Haskell       clean
	make -C Java          clean
#	make -C Java-GraalVM  clean
	make -C JavaScript    clean
	make -C JRuby         clean
	make -C Julia         clean
	make -C Lisp          clean
	make -C Lua           clean
	make -C OCaml         clean
	make -C Pascal        clean
	make -C Perl          clean
	make -C PHP           clean
	make -C Python        clean
	make -C Racket        clean
	make -C RAPL          clean
	make -C Ruby          clean
	make -C Rust          clean
	make -C Smalltalk     clean
	make -C Swift         clean
	make -C TypeScript    clean
