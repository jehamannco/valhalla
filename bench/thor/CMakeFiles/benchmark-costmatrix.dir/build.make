# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.23.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.23.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/cpark/Desktop/valhalla

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/cpark/Desktop/valhalla

# Include any dependencies generated for this target.
include bench/thor/CMakeFiles/benchmark-costmatrix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include bench/thor/CMakeFiles/benchmark-costmatrix.dir/compiler_depend.make

# Include the progress variables for this target.
include bench/thor/CMakeFiles/benchmark-costmatrix.dir/progress.make

# Include the compile flags for this target's objects.
include bench/thor/CMakeFiles/benchmark-costmatrix.dir/flags.make

bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o: bench/thor/CMakeFiles/benchmark-costmatrix.dir/flags.make
bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o: bench/thor/costmatrix.cc
bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o: bench/thor/CMakeFiles/benchmark-costmatrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o"
	cd /Users/cpark/Desktop/valhalla/bench/thor && ccache /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o -MF CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o.d -o CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o -c /Users/cpark/Desktop/valhalla/bench/thor/costmatrix.cc

bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.i"
	cd /Users/cpark/Desktop/valhalla/bench/thor && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cpark/Desktop/valhalla/bench/thor/costmatrix.cc > CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.i

bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.s"
	cd /Users/cpark/Desktop/valhalla/bench/thor && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cpark/Desktop/valhalla/bench/thor/costmatrix.cc -o CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.s

# Object files for target benchmark-costmatrix
benchmark__costmatrix_OBJECTS = \
"CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o"

# External object files for target benchmark-costmatrix
benchmark__costmatrix_EXTERNAL_OBJECTS =

bench/thor/benchmark-costmatrix: bench/thor/CMakeFiles/benchmark-costmatrix.dir/costmatrix.cc.o
bench/thor/benchmark-costmatrix: bench/thor/CMakeFiles/benchmark-costmatrix.dir/build.make
bench/thor/benchmark-costmatrix: test/libvalhalla_test.a
bench/thor/benchmark-costmatrix: benchmark/src/libbenchmark.a
bench/thor/benchmark-costmatrix: src/libvalhalla.a
bench/thor/benchmark-costmatrix: /usr/local/lib/libprotobuf-lite.dylib
bench/thor/benchmark-costmatrix: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurl.tbd
bench/thor/benchmark-costmatrix: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
bench/thor/benchmark-costmatrix: /usr/local/lib/libprime_server.dylib
bench/thor/benchmark-costmatrix: /usr/local/lib/libspatialite.dylib
bench/thor/benchmark-costmatrix: /usr/local/opt/sqlite3/lib/libsqlite3.dylib
bench/thor/benchmark-costmatrix: /usr/local/lib/libluajit-5.1.dylib
bench/thor/benchmark-costmatrix: lib/libgtest_main.a
bench/thor/benchmark-costmatrix: lib/libgmock.a
bench/thor/benchmark-costmatrix: lib/libgtest.a
bench/thor/benchmark-costmatrix: /usr/local/lib/libgeos.dylib
bench/thor/benchmark-costmatrix: /usr/local/lib/libgeos_c.dylib
bench/thor/benchmark-costmatrix: bench/thor/CMakeFiles/benchmark-costmatrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable benchmark-costmatrix"
	cd /Users/cpark/Desktop/valhalla/bench/thor && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/benchmark-costmatrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
bench/thor/CMakeFiles/benchmark-costmatrix.dir/build: bench/thor/benchmark-costmatrix
.PHONY : bench/thor/CMakeFiles/benchmark-costmatrix.dir/build

bench/thor/CMakeFiles/benchmark-costmatrix.dir/clean:
	cd /Users/cpark/Desktop/valhalla/bench/thor && $(CMAKE_COMMAND) -P CMakeFiles/benchmark-costmatrix.dir/cmake_clean.cmake
.PHONY : bench/thor/CMakeFiles/benchmark-costmatrix.dir/clean

bench/thor/CMakeFiles/benchmark-costmatrix.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/bench/thor /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/bench/thor /Users/cpark/Desktop/valhalla/bench/thor/CMakeFiles/benchmark-costmatrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bench/thor/CMakeFiles/benchmark-costmatrix.dir/depend

