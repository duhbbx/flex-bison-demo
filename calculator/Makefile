calc: calc.l calc.y
	flex calc.l
	bison -vdty calc.y
	gcc -o calc y.tab.c lex.yy.c


clean:
	rm -rf y.tab.c lex.yy.c calc y.output y.tab.h