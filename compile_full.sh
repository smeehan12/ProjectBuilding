ROOT=/Users/meehan/work/CernRoot/v6-18-02/build-v6-18-02-python3

g++ -std=c++11 -o myProgram.exe myProgram.cxx src/myFunctions.cxx \
-I./MyProject \
-I$ROOT/include \
-L$ROOT/lib  \
-lCore -lHist -lRIO

