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
include test/gurka/CMakeFiles/gurka_node_access.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/gurka/CMakeFiles/gurka_node_access.dir/compiler_depend.make

# Include the progress variables for this target.
include test/gurka/CMakeFiles/gurka_node_access.dir/progress.make

# Include the compile flags for this target's objects.
include test/gurka/CMakeFiles/gurka_node_access.dir/flags.make

test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.o: test/gurka/CMakeFiles/gurka_node_access.dir/flags.make
test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.o: test/gurka/test_node_access.cc
test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.o: test/gurka/CMakeFiles/gurka_node_access.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.o"
	cd /Users/cpark/Desktop/valhalla/test/gurka && ccache /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.o -MF CMakeFiles/gurka_node_access.dir/test_node_access.cc.o.d -o CMakeFiles/gurka_node_access.dir/test_node_access.cc.o -c /Users/cpark/Desktop/valhalla/test/gurka/test_node_access.cc

test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gurka_node_access.dir/test_node_access.cc.i"
	cd /Users/cpark/Desktop/valhalla/test/gurka && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cpark/Desktop/valhalla/test/gurka/test_node_access.cc > CMakeFiles/gurka_node_access.dir/test_node_access.cc.i

test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gurka_node_access.dir/test_node_access.cc.s"
	cd /Users/cpark/Desktop/valhalla/test/gurka && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cpark/Desktop/valhalla/test/gurka/test_node_access.cc -o CMakeFiles/gurka_node_access.dir/test_node_access.cc.s

# Object files for target gurka_node_access
gurka_node_access_OBJECTS = \
"CMakeFiles/gurka_node_access.dir/test_node_access.cc.o"

# External object files for target gurka_node_access
gurka_node_access_EXTERNAL_OBJECTS =

test/gurka/gurka_node_access: test/gurka/CMakeFiles/gurka_node_access.dir/test_node_access.cc.o
test/gurka/gurka_node_access: test/gurka/CMakeFiles/gurka_node_access.dir/build.make
test/gurka/gurka_node_access: test/libvalhalla_test.a
test/gurka/gurka_node_access: src/libvalhalla.a
test/gurka/gurka_node_access: /usr/local/lib/libprotobuf-lite.dylib
test/gurka/gurka_node_access: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurl.tbd
test/gurka/gurka_node_access: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
test/gurka/gurka_node_access: /usr/local/lib/libprime_server.dylib
test/gurka/gurka_node_access: /usr/local/lib/libspatialite.dylib
test/gurka/gurka_node_access: /usr/local/opt/sqlite3/lib/libsqlite3.dylib
test/gurka/gurka_node_access: /usr/local/lib/libluajit-5.1.dylib
test/gurka/gurka_node_access: lib/libgtest_main.a
test/gurka/gurka_node_access: lib/libgmock.a
test/gurka/gurka_node_access: lib/libgtest.a
test/gurka/gurka_node_access: /usr/local/lib/libgeos.dylib
test/gurka/gurka_node_access: /usr/local/lib/libgeos_c.dylib
test/gurka/gurka_node_access: test/gurka/CMakeFiles/gurka_node_access.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable gurka_node_access"
	cd /Users/cpark/Desktop/valhalla/test/gurka && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gurka_node_access.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/gurka/CMakeFiles/gurka_node_access.dir/build: test/gurka/gurka_node_access
.PHONY : test/gurka/CMakeFiles/gurka_node_access.dir/build

test/gurka/CMakeFiles/gurka_node_access.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test/gurka && $(CMAKE_COMMAND) -P CMakeFiles/gurka_node_access.dir/cmake_clean.cmake
.PHONY : test/gurka/CMakeFiles/gurka_node_access.dir/clean

test/gurka/CMakeFiles/gurka_node_access.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test/gurka /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test/gurka /Users/cpark/Desktop/valhalla/test/gurka/CMakeFiles/gurka_node_access.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/gurka/CMakeFiles/gurka_node_access.dir/depend

