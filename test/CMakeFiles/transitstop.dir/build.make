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
include test/CMakeFiles/transitstop.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/transitstop.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/transitstop.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/transitstop.dir/flags.make

test/CMakeFiles/transitstop.dir/transitstop.cc.o: test/CMakeFiles/transitstop.dir/flags.make
test/CMakeFiles/transitstop.dir/transitstop.cc.o: test/transitstop.cc
test/CMakeFiles/transitstop.dir/transitstop.cc.o: test/CMakeFiles/transitstop.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/transitstop.dir/transitstop.cc.o"
	cd /Users/cpark/Desktop/valhalla/test && ccache /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/transitstop.dir/transitstop.cc.o -MF CMakeFiles/transitstop.dir/transitstop.cc.o.d -o CMakeFiles/transitstop.dir/transitstop.cc.o -c /Users/cpark/Desktop/valhalla/test/transitstop.cc

test/CMakeFiles/transitstop.dir/transitstop.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/transitstop.dir/transitstop.cc.i"
	cd /Users/cpark/Desktop/valhalla/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cpark/Desktop/valhalla/test/transitstop.cc > CMakeFiles/transitstop.dir/transitstop.cc.i

test/CMakeFiles/transitstop.dir/transitstop.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/transitstop.dir/transitstop.cc.s"
	cd /Users/cpark/Desktop/valhalla/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cpark/Desktop/valhalla/test/transitstop.cc -o CMakeFiles/transitstop.dir/transitstop.cc.s

# Object files for target transitstop
transitstop_OBJECTS = \
"CMakeFiles/transitstop.dir/transitstop.cc.o"

# External object files for target transitstop
transitstop_EXTERNAL_OBJECTS =

test/transitstop: test/CMakeFiles/transitstop.dir/transitstop.cc.o
test/transitstop: test/CMakeFiles/transitstop.dir/build.make
test/transitstop: test/libvalhalla_test.a
test/transitstop: src/libvalhalla.a
test/transitstop: /usr/local/lib/libprotobuf-lite.dylib
test/transitstop: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurl.tbd
test/transitstop: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
test/transitstop: /usr/local/lib/libprime_server.dylib
test/transitstop: /usr/local/lib/libspatialite.dylib
test/transitstop: /usr/local/opt/sqlite3/lib/libsqlite3.dylib
test/transitstop: /usr/local/lib/libluajit-5.1.dylib
test/transitstop: lib/libgtest_main.a
test/transitstop: lib/libgmock.a
test/transitstop: lib/libgtest.a
test/transitstop: /usr/local/lib/libgeos.dylib
test/transitstop: /usr/local/lib/libgeos_c.dylib
test/transitstop: test/CMakeFiles/transitstop.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable transitstop"
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/transitstop.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/transitstop.dir/build: test/transitstop
.PHONY : test/CMakeFiles/transitstop.dir/build

test/CMakeFiles/transitstop.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -P CMakeFiles/transitstop.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/transitstop.dir/clean

test/CMakeFiles/transitstop.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla/test/CMakeFiles/transitstop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/transitstop.dir/depend

