cmake_minimum_required(VERSION 3.10)

# set the project name
project(ProjectExample)

# tell cmake where ROOT lives on your computer
list(APPEND CMAKE_PREFIX_PATH $ENV{ROOTSYS})

# find the package and its headers and libraries
find_package(ROOT REQUIRED COMPONENTS RIO)

# include it in your project
include(${ROOT_USE_FILE})

# just to verify where the headers are being taken from
message(STATUS "Using ROOT include : "${ROOT_INCLUDE_DIRS})

# we need to add the myFunctions library, which is not our executable
add_library( myFunctions src/myFunctions.cxx MyProject/myFunctions.h )
target_include_directories( myFunctions PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/MyProject")


# this is the executable program with our main() function
# to achieve this, we will also need to tell the program
# where the relevant headers and libraires reside and stitch them together
add_executable(myProgram myProgram.cxx)
target_include_directories(myProgram PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/MyProject")
target_link_libraries(myProgram ${ROOT_LIBRARIES} myFunctions)