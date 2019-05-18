cmake_minimum_required(VERSION 2.8.3)
project(A*)

## C++11
set( CMAKE_CXX_STANDARD 11 )

find_package(OpenCV REQUIRED)


## Linking 
include_directories(include ${OpenCV_INCLUDE_DIRS} )

## Creating executable for ros-integrated test:
add_executable(A* A*.cpp)
target_link_libraries(A*  ${OpenCV_LIBS})


