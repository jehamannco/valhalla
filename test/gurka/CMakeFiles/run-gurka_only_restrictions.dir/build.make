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

# Utility rule file for run-gurka_only_restrictions.

# Include any custom commands dependencies for this target.
include test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/compiler_depend.make

# Include the progress variables for this target.
include test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/progress.make

test/gurka/CMakeFiles/run-gurka_only_restrictions: test/gurka/gurka_only_restrictions.log

test/gurka/gurka_only_restrictions.log: test/gurka/gurka_only_restrictions
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating gurka_only_restrictions.log"
	LOCPATH=/Users/cpark/Desktop/valhalla/locales /bin/bash -c "/Users/cpark/Desktop/valhalla/test/gurka/gurka_only_restrictions >& /Users/cpark/Desktop/valhalla/test/gurka/gurka_only_restrictions.log         && echo [PASS] gurka_only_restrictions         || ( exit=\$$? ;              echo [FAIL] gurka_only_restrictions ;              cat /Users/cpark/Desktop/valhalla/test/gurka/gurka_only_restrictions.log ;              exit \$$exit )"

run-gurka_only_restrictions: test/gurka/CMakeFiles/run-gurka_only_restrictions
run-gurka_only_restrictions: test/gurka/gurka_only_restrictions.log
run-gurka_only_restrictions: test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/build.make
.PHONY : run-gurka_only_restrictions

# Rule to build all files generated by this target.
test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/build: run-gurka_only_restrictions
.PHONY : test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/build

test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/clean:
	cd /Users/cpark/Desktop/valhalla/test/gurka && $(CMAKE_COMMAND) -P CMakeFiles/run-gurka_only_restrictions.dir/cmake_clean.cmake
.PHONY : test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/clean

test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test/gurka /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/test/gurka /Users/cpark/Desktop/valhalla/test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/gurka/CMakeFiles/run-gurka_only_restrictions.dir/depend

