all: myProgram.exe


myProgram.exe: myProgram.o ./src/myFunctions.o
	g++ -o myProgram.o myProgram.o -I./MultiCode -I/Users/meehan/RootVersions/v6.06.00/root-6.06.00/include -L/Users/meehan/RootVersions/v6.06.00/root-6.06.00/lib  -lCore -lHist -lRIO


myProgram.o: myProgram.cxx 
	g++ -c myProgram.cxx -I./MultiCode -I/Users/meehan/RootVersions/v6.06.00/root-6.06.00/include -L/Users/meehan/RootVersions/v6.06.00/root-6.06.00/lib  -lCore -lHist -lRIO


# myFunctions.o: ./src/myFunctions.cxx 
# 	g++ -c myFunctions.cxx -I./MultiCode -I/Users/meehan/RootVersions/v6.06.00/root-6.06.00/include -L/Users/meehan/RootVersions/v6.06.00/root-6.06.00/lib  -lCore -lHist -lRIO
# 
# 
# clean:
# 	rm myProgram.exe myProgram.o ./src/myFunctions.o