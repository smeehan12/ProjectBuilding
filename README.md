# Project Compilation

This builds a random number generator for triangular-ly distributed numbers.  It is 
meant to be used to look at different ways to build a semi-complicated project.  Each way 
is outlined below.

Note that these directions work on Sam's MacBook pro with OSX 10.14.5.  They *should* work
on Linux, but may require modification.  Don't hesitate to ask.

## Build in One Go
You can see the "one liner" to compile/link (i.e. build) in the `compile_full.sh`
file, and you can use it by running the following.
```
source compile_full.sh
```

## Compiling Separately
You can see each of the stages of building and then linking in the `compile_separate.sh`
file, and you can use it by running the following.
```
source compile_separate.sh
```

## Explicit Makefile
You can also build using the `makefile` and the directives contained within that.  This
makefile explicitly outlines all the paths in gory detail that are needed.
```
make
```

## Efficient Makefile #1
You can also build using the `makefile_efficient1` and the directives contained within 
that to build the program, but this time the directions are a bit more efficient in their
usage, which can be helpful if your project begins to grow.  This is now not called simply
`makefile` and so we need to specify which file to pull from
```
make --file=makefile_efficient1
```

## Efficient Makefile #1
You can also build using the `makefile_efficient2` and the directives contained within 
that to build the program, but this time the directions are *a lot* bit more efficient in their
usage, which can be helpful if your project begins to grow.  This is now not called simply
`makefile` and so we need to specify which file to pull from
```
make --file=makefile_efficient2
```

## CMake
A more advanced tool for building is CMake.  This requires a `CMakeLists.txt` file.
You can use the following to build this code using CMake :
```
mkdir build
cd build
cmake ../
make
```


