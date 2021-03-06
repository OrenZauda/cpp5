#!make -f

all: demo
	./$<

demo:  Demo.o 
	clang++-9 -std=c++17 $^ -o demo

test:  Test.o 
	clang++-9 -std=c++17 $^ -o test

%.o: %.cpp range.hpp chain.hpp powerset.hpp product.hpp zip.hpp
	clang++-9 -std=c++17 --compile $< -o $@

clean:
	rm -f *.o demo test