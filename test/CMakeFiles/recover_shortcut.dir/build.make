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
include test/CMakeFiles/recover_shortcut.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/recover_shortcut.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/recover_shortcut.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/recover_shortcut.dir/flags.make

test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o: test/CMakeFiles/recover_shortcut.dir/flags.make
test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o: test/recover_shortcut.cc
test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o: test/CMakeFiles/recover_shortcut.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o"
	cd /Users/cpark/Desktop/valhalla/test && ccache /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o -MF CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o.d -o CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o -c /Users/cpark/Desktop/valhalla/test/recover_shortcut.cc

test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.i"
	cd /Users/cpark/Desktop/valhalla/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cpark/Desktop/valhalla/test/recover_shortcut.cc > CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.i

test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.s"
	cd /Users/cpark/Desktop/valhalla/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cpark/Desktop/valhalla/test/recover_shortcut.cc -o CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.s

# Object files for target recover_shortcut
recover_shortcut_OBJECTS = \
"CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o"

# External object files for target recover_shortcut
recover_shortcut_EXTERNAL_OBJECTS =

test/recover_shortcut: test/CMakeFiles/recover_shortcut.dir/recover_shortcut.cc.o
test/recover_shortcut: test/CMakeFiles/recover_shortcut.dir/build.make
test/recover_shortcut: test/libvalhalla_test.a
test/recover_shortcut: src/libvalhalla.a
test/recover_shortcut: /usr/local/lib/libprotobuf-lite.dylib
test/recover_shortcut: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurl.tbd
test/recover_shortcut: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
test/recover_shortcut: /usr/local/lib/libprime_server.dylib
test/recover_shortcut: /usr/local/lib/libspatialite.dylib
test/recover_shortcut: /usr/local/opt/sqlite3/lib/libsqlite3.dylib
test/recover_shortcut: /usr/local/lib/libluajit-5.1.dylib
test/recover_shortcut: lib/libgtest_main.a
test/recover_shortcut: lib/libgmock.a
test/recover_shortcut: lib/libgtest.a
test/recover_shortcut: /usr/local/lib/libgeos.dylib
test/recover_shortcut: /usr/local/lib/libgeos_c.dylib
test/recover_shortcut: test/CMakeFiles/recover_shortcut.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable recover_shortcut"
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recover_shortcut.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/recover_shortcut.dir/build: test/recover_shortcut
.PHONY : test/CMakeFiles/recover_shortcut.dir/build

test/CMakeFiles/recover_shortcut.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -P CMakeFiles/recover_shortcut.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/recover_shortcut.dir/clean

test/CMakeFiles/recover_shortcut.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla/test/CMakeFiles/recover_shortcut.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/recover_shortcut.dir/depend

