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
include tbb/CMakeFiles/tbb_test_parallel_scan.dir/depend.make

# Include the progress variables for this target.
include tbb/CMakeFiles/tbb_test_parallel_scan.dir/progress.make

# Include the compile flags for this target's objects.
include tbb/CMakeFiles/tbb_test_parallel_scan.dir/flags.make

tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o: tbb/CMakeFiles/tbb_test_parallel_scan.dir/flags.make
tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o: ../tbb/src/test/test_parallel_scan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/shrey/Planning/A*/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o"
	cd "/home/shrey/Planning/A*/build/tbb" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o -c "/home/shrey/Planning/A*/tbb/src/test/test_parallel_scan.cpp"

tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.i"
	cd "/home/shrey/Planning/A*/build/tbb" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/shrey/Planning/A*/tbb/src/test/test_parallel_scan.cpp" > CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.i

tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.s"
	cd "/home/shrey/Planning/A*/build/tbb" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/shrey/Planning/A*/tbb/src/test/test_parallel_scan.cpp" -o CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.s

tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.requires:

.PHONY : tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.requires

tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.provides: tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.requires
	$(MAKE) -f tbb/CMakeFiles/tbb_test_parallel_scan.dir/build.make tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.provides.build
.PHONY : tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.provides

tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.provides.build: tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o


# Object files for target tbb_test_parallel_scan
tbb_test_parallel_scan_OBJECTS = \
"CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o"

# External object files for target tbb_test_parallel_scan
tbb_test_parallel_scan_EXTERNAL_OBJECTS =

tbb/tbb_test_parallel_scan: tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o
tbb/tbb_test_parallel_scan: tbb/CMakeFiles/tbb_test_parallel_scan.dir/build.make
tbb/tbb_test_parallel_scan: tbb/libtbb.so
tbb/tbb_test_parallel_scan: tbb/libtbbmalloc.so
tbb/tbb_test_parallel_scan: /usr/lib/x86_64-linux-gnu/librt.so
tbb/tbb_test_parallel_scan: /usr/lib/x86_64-linux-gnu/libdl.so
tbb/tbb_test_parallel_scan: tbb/CMakeFiles/tbb_test_parallel_scan.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/shrey/Planning/A*/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tbb_test_parallel_scan"
	cd "/home/shrey/Planning/A*/build/tbb" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tbb_test_parallel_scan.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tbb/CMakeFiles/tbb_test_parallel_scan.dir/build: tbb/tbb_test_parallel_scan

.PHONY : tbb/CMakeFiles/tbb_test_parallel_scan.dir/build

tbb/CMakeFiles/tbb_test_parallel_scan.dir/requires: tbb/CMakeFiles/tbb_test_parallel_scan.dir/src/test/test_parallel_scan.cpp.o.requires

.PHONY : tbb/CMakeFiles/tbb_test_parallel_scan.dir/requires

tbb/CMakeFiles/tbb_test_parallel_scan.dir/clean:
	cd "/home/shrey/Planning/A*/build/tbb" && $(CMAKE_COMMAND) -P CMakeFiles/tbb_test_parallel_scan.dir/cmake_clean.cmake
.PHONY : tbb/CMakeFiles/tbb_test_parallel_scan.dir/clean

tbb/CMakeFiles/tbb_test_parallel_scan.dir/depend:
	cd "/home/shrey/Planning/A*/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/shrey/Planning/A*" "/home/shrey/Planning/A*/tbb" "/home/shrey/Planning/A*/build" "/home/shrey/Planning/A*/build/tbb" "/home/shrey/Planning/A*/build/tbb/CMakeFiles/tbb_test_parallel_scan.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tbb/CMakeFiles/tbb_test_parallel_scan.dir/depend

