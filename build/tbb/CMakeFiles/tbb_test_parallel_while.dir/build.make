# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/shrey/Planning/A*"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/shrey/Planning/A*/build"

# Include any dependencies generated for this target.
include tbb/CMakeFiles/tbb_test_parallel_while.dir/depend.make

# Include the progress variables for this target.
include tbb/CMakeFiles/tbb_test_parallel_while.dir/progress.make

# Include the compile flags for this target's objects.
include tbb/CMakeFiles/tbb_test_parallel_while.dir/flags.make

tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o: tbb/CMakeFiles/tbb_test_parallel_while.dir/flags.make
tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o: ../tbb/src/test/test_parallel_while.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/shrey/Planning/A*/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o"
	cd "/home/shrey/Planning/A*/build/tbb" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o -c "/home/shrey/Planning/A*/tbb/src/test/test_parallel_while.cpp"

tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.i"
	cd "/home/shrey/Planning/A*/build/tbb" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/shrey/Planning/A*/tbb/src/test/test_parallel_while.cpp" > CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.i

tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.s"
	cd "/home/shrey/Planning/A*/build/tbb" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/shrey/Planning/A*/tbb/src/test/test_parallel_while.cpp" -o CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.s

tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.requires:

.PHONY : tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.requires

tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.provides: tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.requires
	$(MAKE) -f tbb/CMakeFiles/tbb_test_parallel_while.dir/build.make tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.provides.build
.PHONY : tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.provides

tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.provides.build: tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o


# Object files for target tbb_test_parallel_while
tbb_test_parallel_while_OBJECTS = \
"CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o"

# External object files for target tbb_test_parallel_while
tbb_test_parallel_while_EXTERNAL_OBJECTS =

tbb/tbb_test_parallel_while: tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o
tbb/tbb_test_parallel_while: tbb/CMakeFiles/tbb_test_parallel_while.dir/build.make
tbb/tbb_test_parallel_while: tbb/libtbb.so
tbb/tbb_test_parallel_while: tbb/libtbbmalloc.so
tbb/tbb_test_parallel_while: /usr/lib/x86_64-linux-gnu/librt.so
tbb/tbb_test_parallel_while: /usr/lib/x86_64-linux-gnu/libdl.so
tbb/tbb_test_parallel_while: tbb/CMakeFiles/tbb_test_parallel_while.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/shrey/Planning/A*/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tbb_test_parallel_while"
	cd "/home/shrey/Planning/A*/build/tbb" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tbb_test_parallel_while.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tbb/CMakeFiles/tbb_test_parallel_while.dir/build: tbb/tbb_test_parallel_while

.PHONY : tbb/CMakeFiles/tbb_test_parallel_while.dir/build

tbb/CMakeFiles/tbb_test_parallel_while.dir/requires: tbb/CMakeFiles/tbb_test_parallel_while.dir/src/test/test_parallel_while.cpp.o.requires

.PHONY : tbb/CMakeFiles/tbb_test_parallel_while.dir/requires

tbb/CMakeFiles/tbb_test_parallel_while.dir/clean:
	cd "/home/shrey/Planning/A*/build/tbb" && $(CMAKE_COMMAND) -P CMakeFiles/tbb_test_parallel_while.dir/cmake_clean.cmake
.PHONY : tbb/CMakeFiles/tbb_test_parallel_while.dir/clean

tbb/CMakeFiles/tbb_test_parallel_while.dir/depend:
	cd "/home/shrey/Planning/A*/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/shrey/Planning/A*" "/home/shrey/Planning/A*/tbb" "/home/shrey/Planning/A*/build" "/home/shrey/Planning/A*/build/tbb" "/home/shrey/Planning/A*/build/tbb/CMakeFiles/tbb_test_parallel_while.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tbb/CMakeFiles/tbb_test_parallel_while.dir/depend
