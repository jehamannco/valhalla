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

# Utility rule file for run-json.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/run-json.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/run-json.dir/progress.make

test/CMakeFiles/run-json: test/json.log

test/json.log: test/json
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating json.log"
	LOCPATH=/Users/cpark/Desktop/valhalla/locales /bin/bash -c "/Users/cpark/Desktop/valhalla/test/json >& /Users/cpark/Desktop/valhalla/test/json.log       && echo [PASS] json       || ( exit=\$$? ;            echo [FAIL] json ;            cat /Users/cpark/Desktop/valhalla/test/json.log ;            exit \$$exit )"

run-json: test/CMakeFiles/run-json
run-json: test/json.log
run-json: test/CMakeFiles/run-json.dir/build.make
.PHONY : run-json

# Rule to build all files generated by this target.
test/CMakeFiles/run-json.dir/build: run-json
.PHONY : test/CMakeFiles/run-json.dir/build

test/CMakeFiles/run-json.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -P CMakeFiles/run-json.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/run-json.dir/clean

test/CMakeFiles/run-json.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla/test/CMakeFiles/run-json.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/run-json.dir/depend

