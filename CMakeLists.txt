cmake_minimum_required(VERSION 2.8.3)
project(A*)

## C++11
set( CMAKE_CXX_STANDARD 14 )

# Find the package
find_package(OpenCV REQUIRED)

## Linking 
include_directories(include ${OpenCV_INCLUDE_DIRS} )

## Creating executable for ros-integrated test:
add_executable(A* A*.cpp)
target_link_libraries(A*  ${OpenCV_LIBS})

if(NOT TARGET OpenMP::OpenMP_CXX)
    find_package(Threads REQUIRED)
    add_library(OpenMP::OpenMP_CXX IMPORTED INTERFACE)
    set_property(TARGET OpenMP::OpenMP_CXX
                 PROPERTY INTERFACE_COMPILE_OPTIONS ${OpenMP_CXX_FLAGS})
    # Only works if the same flag is passed to the linker; use CMake 3.9+ otherwise (Intel, AppleClang)
    set_property(TARGET OpenMP::OpenMP_CXX
                 PROPERTY INTERFACE_LINK_LIBRARIES ${OpenMP_CXX_FLAGS} Threads::Threads)

endif()
target_link_libraries(A* PUBLIC OpenMP::OpenMP_CXX)
