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
include CMakeFiles/valhalla_run_matrix.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/valhalla_run_matrix.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/valhalla_run_matrix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/valhalla_run_matrix.dir/flags.make

CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o: CMakeFiles/valhalla_run_matrix.dir/flags.make
CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o: src/valhalla_run_matrix.cc
CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o: CMakeFiles/valhalla_run_matrix.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o"
	ccache /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o -MF CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o.d -o CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o -c /Users/cpark/Desktop/valhalla/src/valhalla_run_matrix.cc

CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/cpark/Desktop/valhalla/src/valhalla_run_matrix.cc > CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.i

CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/cpark/Desktop/valhalla/src/valhalla_run_matrix.cc -o CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.s

# Object files for target valhalla_run_matrix
valhalla_run_matrix_OBJECTS = \
"CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o"

# External object files for target valhalla_run_matrix
valhalla_run_matrix_EXTERNAL_OBJECTS =

valhalla_run_matrix: CMakeFiles/valhalla_run_matrix.dir/src/valhalla_run_matrix.cc.o
valhalla_run_matrix: CMakeFiles/valhalla_run_matrix.dir/build.make
valhalla_run_matrix: src/libvalhalla.a
valhalla_run_matrix: /usr/local/lib/libprotobuf-lite.dylib
valhalla_run_matrix: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libcurl.tbd
valhalla_run_matrix: /Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk/usr/lib/libz.tbd
valhalla_run_matrix: /usr/local/lib/libprime_server.dylib
valhalla_run_matrix: /usr/local/lib/libspatialite.dylib
valhalla_run_matrix: /usr/local/opt/sqlite3/lib/libsqlite3.dylib
valhalla_run_matrix: /usr/local/lib/libluajit-5.1.dylib
valhalla_run_matrix: CMakeFiles/valhalla_run_matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/cpark/Desktop/valhalla/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable valhalla_run_matrix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/valhalla_run_matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/valhalla_run_matrix.dir/build: valhalla_run_matrix
.PHONY : CMakeFiles/valhalla_run_matrix.dir/build

CMakeFiles/valhalla_run_matrix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/valhalla_run_matrix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/valhalla_run_matrix.dir/clean

CMakeFiles/valhalla_run_matrix.dir/depend:
	cd /Users/cpark/Desktop/valhalla && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla /Users/cpark/Desktop/valhalla/CMakeFiles/valhalla_run_matrix.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/valhalla_run_matrix.dir/depend

