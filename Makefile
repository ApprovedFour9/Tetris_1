.PHONY: all clean

OBJ      = build/src/tetris.o build/src/main.o
LINKOBJ  = build/src/tetris.o build/src/main.o
FLAG = -I./ -O3 -lrt
all : bin/tetris

clean:
	rm -rf $(BIN) build/src/*.o

bin/tetris: $(OBJ)
	gcc  $(LINKOBJ) -o bin/tetris

build/src/tetris.o: src/tetris.c
	gcc $(FLAG)   -c src/tetris.c -o build/src/tetris.o

build/src/main.o: src/main.c
	gcc $(FLAG)   -c src/main.c -o build/src/main.o

