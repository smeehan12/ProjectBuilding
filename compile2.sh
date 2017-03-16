g++ -c -o ./src/myFunctions.o ./src/myFunctions.cxx  \
-I./MultiCode \
-I/Users/meehan/RootVersions/v6.06.00/root-6.06.00/include \
-L/Users/meehan/RootVersions/v6.06.00/root-6.06.00/lib  \
-lCore -lHist -lRIO

g++ -c -o myProgram.o myProgram.cxx \
-I./MultiCode \
-I/Users/meehan/RootVersions/v6.06.00/root-6.06.00/include \
-L/Users/meehan/RootVersions/v6.06.00/root-6.06.00/lib  \
-lCore -lHist -lRIO

g++ -o myProgram.exe myProgram.o ./src/myFunctions.o \
-I./MultiCode \
-I/Users/meehan/RootVersions/v6.06.00/root-6.06.00/include \
-L/Users/meehan/RootVersions/v6.06.00/root-6.06.00/lib  \
-lCore -lHist -lRIO

