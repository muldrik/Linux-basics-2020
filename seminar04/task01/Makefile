# print your code here
SHELL := /bin/bash
all: run_fast run_slow clean
build_fast: src/main_fast.cpp src/fast.hpp src/fast.cpp
	g++ src/main_fast.cpp src/fast.cpp -o fast.o
build_slow: src/main_slow.cpp src/slow.hpp src/slow.cpp
	g++ src/main_slow.cpp src/slow.cpp -o slow.o
run_fast: build_fast src/generator.sh
	./fast.o `./src/generator.sh`
run_slow: build_slow src/generator.sh
	./slow.o `./src/generator.sh`
time:
	time $1
clean:
	rm -f *.o
