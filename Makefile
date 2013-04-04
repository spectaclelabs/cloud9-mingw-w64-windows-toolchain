PATH := bin:$(PATH)

all: test-32.exe test-64.exe

test-32.exe:
	x86_64-w64-mingw32-g++ -m32 -static-libgcc -static-libstdc++ -std=c++11 test.cc -o test-32.exe

test-64.exe:
	x86_64-w64-mingw32-g++ -static-libgcc -static-libstdc++ -std=c++11 test.cc -o test-64.exe

clean:
	rm test-32.exe test-64.exe
