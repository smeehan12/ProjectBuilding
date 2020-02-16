ROOT=/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3

g++ -std=c++11 -c -o ./src/myFunctions.o ./src/myFunctions.cxx  \
-I./MyProject \
-I$ROOT/include \
-L$ROOT/lib  \
-lCore -lHist -lRIO

g++ -std=c++11 -c -o myProgram.o myProgram.cxx \
-I./MyProject \
-I$ROOT/include \
-L$ROOT/lib  \
-lCore -lHist -lRIO

g++ -std=c++11 -o myProgram.exe myProgram.o ./src/myFunctions.o \
-I./MyProject \
-I$ROOT/include \
-L$ROOT/lib  \
-lCore -lHist -lRIO

