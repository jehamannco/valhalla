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

# Utility rule file for run-gurka_oneways.

# Include any custom commands dependencies for this target.
include test/gurka/CMakeFiles/run-gurka_oneways.dir/compiler_depend.make

# Include the progress variables for this target.
include test/gurka/CMakeFiles/run-gurka_oneways.dir/progress.make

test/gurka/CMakeFiles/run-gurka_oneways: test/gurka/gurka_oneways.log

test/gurka/gurka_oneways.log: test/gurka/gurka_oneways
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating gurka_oneways.log"
	LOCPATH=/Users/cpark/Desktop/valhalla/locales /bin/bash -c "/Users/cpark/Desktop/valhalla/test/gurka/gurka_oneways >& /Users/cpark/Desktop/valhalla/test/gurka/gurka_oneways.log         && echo [PASS] gurka_oneways         || ( exit=\$$? ;              echo [FAIL] gurka_oneways ;              cat /Users/cpark/Desktop/valhalla/test/gurka/gurka_oneways.log ;              exit \$$exit )"

run-gurka_oneways: test/gurka/CMakeFiles/run-gurka_oneways
run-gurka_oneways: test/gurka/gurka_oneways.log
run-gurka_oneways: test/gurka/CMakeFiles/run-gurka_oneways.dir/build.make
.PHONY : run-gurka_oneways

# Rule to build all files generated by this target.
test/gurka/CMakeFiles/run-gurka_oneways.dir/build: run-gurka_oneways
.PHONY : test/gurka/CMakeFiles/run-gurka_oneways.dir/build

test/gurka/CMakeFiles/run-gurka_oneways.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test/gurka && $(CMAKE_COMMAND) -P CMakeFiles/run-gurka_oneways.dir/cmake_clean.cmake
.PHONY : test/gurka/CMakeFiles/run-gurka_oneways.dir/clean

test/gurka/CMakeFiles/run-gurka_oneways.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test/gurka /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test/gurka /Users/cpark/Desktop/valhalla/test/gurka/CMakeFiles/run-gurka_oneways.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/gurka/CMakeFiles/run-gurka_oneways.dir/depend

