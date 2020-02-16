all: myProgram.exe

myProgram.exe: myProgram.o ./src/myFunctions.o
	g++ -std=c++11 -o myProgram.exe myProgram.o ./src/myFunctions.o \
	-I./MyProject \
	-I/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3/include \
	-L/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3/lib  \
	-lCore -lHist -lRIO


myProgram.o: myProgram.cxx 
	g++ -std=c++11 -c -o myProgram.o myProgram.cxx \
	-I./MyProject -I/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3/include \
	-L/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3/lib  \
	-lCore -lHist -lRIO


./src/myFunctions.o: ./src/myFunctions.cxx 
	g++ -std=c++11 -c -o ./src/myFunctions.o ./src/myFunctions.cxx \
	-I./MyProject -I/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3/include \
	-L/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3/lib  \
	-lCore -lHist -lRIO

clean:
	rm myProgram.exe myProgram.o ./src/myFunctions.o