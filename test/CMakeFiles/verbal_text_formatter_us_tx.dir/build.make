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
include test/CMakeFiles/verbal_text_formatter_us_tx.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/verbal_text_formatter_us_tx.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/verbal_text_formatter_us_tx.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/verbal_text_formatter_us_tx.dir/flags.make

test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o: test/CMakeFiles/verbal_text_formatter_us_tx.dir/flags.make
test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o: test/verbal_text_formatter_us_tx.cc
test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o: test/CMakeFiles/verbal_text_formatter_us_tx.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o"
	cd /Users/cpark/Desktop/valhalla/test && ccache /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o -MF CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o.d -o CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o -c /Users/cpark/Desktop/valhalla/test/verbal_text_formatter_us_tx.cc

test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.i"
	cd /Users/cpark/Desktop/valhalla/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cpark/Desktop/valhalla/test/verbal_text_formatter_us_tx.cc > CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.i

test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.s"
	cd /Users/cpark/Desktop/valhalla/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cpark/Desktop/valhalla/test/verbal_text_formatter_us_tx.cc -o CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.s

# Object files for target verbal_text_formatter_us_tx
verbal_text_formatter_us_tx_OBJECTS = \
"CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o"

# External object files for target verbal_text_formatter_us_tx
verbal_text_formatter_us_tx_EXTERNAL_OBJECTS =

test/verbal_text_formatter_us_tx: test/CMakeFiles/verbal_text_formatter_us_tx.dir/verbal_text_formatter_us_tx.cc.o
test/verbal_text_formatter_us_tx: test/CMakeFiles/verbal_text_formatter_us_tx.dir/build.make
test/verbal_text_formatter_us_tx: test/libvalhalla_test.a
test/verbal_text_formatter_us_tx: src/libvalhalla.a
test/verbal_text_formatter_us_tx: /usr/local/lib/libprotobuf-lite.dylib
test/verbal_text_formatter_us_tx: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurl.tbd
test/verbal_text_formatter_us_tx: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
test/verbal_text_formatter_us_tx: /usr/local/lib/libprime_server.dylib
test/verbal_text_formatter_us_tx: /usr/local/lib/libspatialite.dylib
test/verbal_text_formatter_us_tx: /usr/local/opt/sqlite3/lib/libsqlite3.dylib
test/verbal_text_formatter_us_tx: /usr/local/lib/libluajit-5.1.dylib
test/verbal_text_formatter_us_tx: lib/libgtest_main.a
test/verbal_text_formatter_us_tx: lib/libgmock.a
test/verbal_text_formatter_us_tx: lib/libgtest.a
test/verbal_text_formatter_us_tx: /usr/local/lib/libgeos.dylib
test/verbal_text_formatter_us_tx: /usr/local/lib/libgeos_c.dylib
test/verbal_text_formatter_us_tx: test/CMakeFiles/verbal_text_formatter_us_tx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable verbal_text_formatter_us_tx"
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/verbal_text_formatter_us_tx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/verbal_text_formatter_us_tx.dir/build: test/verbal_text_formatter_us_tx
.PHONY : test/CMakeFiles/verbal_text_formatter_us_tx.dir/build

test/CMakeFiles/verbal_text_formatter_us_tx.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -P CMakeFiles/verbal_text_formatter_us_tx.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/verbal_text_formatter_us_tx.dir/clean

test/CMakeFiles/verbal_text_formatter_us_tx.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla/test/CMakeFiles/verbal_text_formatter_us_tx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/verbal_text_formatter_us_tx.dir/depend

