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

# Utility rule file for run-sign.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/run-sign.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/run-sign.dir/progress.make

test/CMakeFiles/run-sign: test/sign.log

test/sign.log: test/sign
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating sign.log"
	LOCPATH=/Users/cpark/Desktop/valhalla/locales /bin/bash -c "/Users/cpark/Desktop/valhalla/test/sign >& /Users/cpark/Desktop/valhalla/test/sign.log       && echo [PASS] sign       || ( exit=\$$? ;            echo [FAIL] sign ;            cat /Users/cpark/Desktop/valhalla/test/sign.log ;            exit \$$exit )"

run-sign: test/CMakeFiles/run-sign
run-sign: test/sign.log
run-sign: test/CMakeFiles/run-sign.dir/build.make
.PHONY : run-sign

# Rule to build all files generated by this target.
test/CMakeFiles/run-sign.dir/build: run-sign
.PHONY : test/CMakeFiles/run-sign.dir/build

test/CMakeFiles/run-sign.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -P CMakeFiles/run-sign.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/run-sign.dir/clean

test/CMakeFiles/run-sign.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla/test/CMakeFiles/run-sign.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/run-sign.dir/depend

