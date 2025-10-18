CC = g++
CFLAGS = -Iinclude -Wall -std=c++17
SRC = src/calculator.cpp src/main.cpp
OBJ = $(SRC:.cpp=.o)
LIB = libcalc.a
TARGET = calculator_app

all: $(LIB) $(TARGET)

$(LIB): src/calculator.o
	ar rcs $(LIB) src/calculator.o

$(TARGET): src/main.o $(LIB)
	$(CC) $(CFLAGS) -o $(TARGET) src/main.o -L. -lcalc

src/%.o: src/%.cpp include/calculator.h
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f src/*.o $(LIB) $(TARGET)

.PHONY: all clean
