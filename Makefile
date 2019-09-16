.PHONY: all clean

OBJ      = build/src/tetris.o build/src/main.o
LINKOBJ  = build/src/tetris.o build/src/main.o
FLAG = -I./ -O3 -lrt
all : bin/tetris

test : bin/tetris-test

clean:
	rm -rf $(BIN) build/src/*.o

clean_test: 
	rm -rf $(BIN) build/test/*.o 
	rm -rf $(BIN) build/test/*.d

bin/tetris: $(OBJ)
	gcc  $(LINKOBJ) -o bin/tetris

bin/tetris-test: build/test/test_tetris.o build/test/tetris_main.o
	gcc $(FLAG)   build/test/test_tetris.o build/test/test_main.o  -o bin/tetris-test

build/src/tetris.o: src/tetris.c
	gcc $(FLAG)   -c src/tetris.c -o build/src/tetris.o

build/src/main.o: src/main.c
	gcc $(FLAG)   -c src/main.c -o build/src/main.o



