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

# Utility rule file for run-map_matcher_factory.

# Include any custom commands dependencies for this target.
include test/CMakeFiles/run-map_matcher_factory.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/run-map_matcher_factory.dir/progress.make

test/CMakeFiles/run-map_matcher_factory: test/map_matcher_factory.log

test/map_matcher_factory.log: test/map_matcher_factory
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating map_matcher_factory.log"
	LOCPATH=/Users/cpark/Desktop/valhalla/locales /bin/bash -c "/Users/cpark/Desktop/valhalla/test/map_matcher_factory >& /Users/cpark/Desktop/valhalla/test/map_matcher_factory.log       && echo [PASS] map_matcher_factory       || ( exit=\$$? ;            echo [FAIL] map_matcher_factory ;            cat /Users/cpark/Desktop/valhalla/test/map_matcher_factory.log ;            exit \$$exit )"

run-map_matcher_factory: test/CMakeFiles/run-map_matcher_factory
run-map_matcher_factory: test/map_matcher_factory.log
run-map_matcher_factory: test/CMakeFiles/run-map_matcher_factory.dir/build.make
.PHONY : run-map_matcher_factory

# Rule to build all files generated by this target.
test/CMakeFiles/run-map_matcher_factory.dir/build: run-map_matcher_factory
.PHONY : test/CMakeFiles/run-map_matcher_factory.dir/build

test/CMakeFiles/run-map_matcher_factory.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test && $(CMAKE_COMMAND) -P CMakeFiles/run-map_matcher_factory.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/run-map_matcher_factory.dir/clean

test/CMakeFiles/run-map_matcher_factory.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test /Users/cpark/Desktop/valhalla/test/CMakeFiles/run-map_matcher_factory.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/run-map_matcher_factory.dir/depend

