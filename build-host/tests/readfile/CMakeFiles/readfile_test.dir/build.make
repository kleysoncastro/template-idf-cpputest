# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/castro/developer/esp/esp32-lunux-cpputest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/castro/developer/esp/esp32-lunux-cpputest/build-host

# Include any dependencies generated for this target.
include tests/readfile/CMakeFiles/readfile_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/readfile/CMakeFiles/readfile_test.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/readfile/CMakeFiles/readfile_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/readfile/CMakeFiles/readfile_test.dir/flags.make

tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o: tests/readfile/CMakeFiles/readfile_test.dir/flags.make
tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o: /home/castro/developer/esp/esp32-lunux-cpputest/tests/readfile/readfileTest.cpp
tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o: tests/readfile/CMakeFiles/readfile_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/castro/developer/esp/esp32-lunux-cpputest/build-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o"
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o -MF CMakeFiles/readfile_test.dir/readfileTest.cpp.o.d -o CMakeFiles/readfile_test.dir/readfileTest.cpp.o -c /home/castro/developer/esp/esp32-lunux-cpputest/tests/readfile/readfileTest.cpp

tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/readfile_test.dir/readfileTest.cpp.i"
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/castro/developer/esp/esp32-lunux-cpputest/tests/readfile/readfileTest.cpp > CMakeFiles/readfile_test.dir/readfileTest.cpp.i

tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/readfile_test.dir/readfileTest.cpp.s"
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/castro/developer/esp/esp32-lunux-cpputest/tests/readfile/readfileTest.cpp -o CMakeFiles/readfile_test.dir/readfileTest.cpp.s

# Object files for target readfile_test
readfile_test_OBJECTS = \
"CMakeFiles/readfile_test.dir/readfileTest.cpp.o"

# External object files for target readfile_test
readfile_test_EXTERNAL_OBJECTS =

tests/readfile/libreadfile_test.a: tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o
tests/readfile/libreadfile_test.a: tests/readfile/CMakeFiles/readfile_test.dir/build.make
tests/readfile/libreadfile_test.a: tests/readfile/CMakeFiles/readfile_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/castro/developer/esp/esp32-lunux-cpputest/build-host/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libreadfile_test.a"
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile && $(CMAKE_COMMAND) -P CMakeFiles/readfile_test.dir/cmake_clean_target.cmake
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/readfile_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/readfile/CMakeFiles/readfile_test.dir/build: tests/readfile/libreadfile_test.a
.PHONY : tests/readfile/CMakeFiles/readfile_test.dir/build

tests/readfile/CMakeFiles/readfile_test.dir/clean:
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile && $(CMAKE_COMMAND) -P CMakeFiles/readfile_test.dir/cmake_clean.cmake
.PHONY : tests/readfile/CMakeFiles/readfile_test.dir/clean

tests/readfile/CMakeFiles/readfile_test.dir/depend:
	cd /home/castro/developer/esp/esp32-lunux-cpputest/build-host && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/castro/developer/esp/esp32-lunux-cpputest /home/castro/developer/esp/esp32-lunux-cpputest/tests/readfile /home/castro/developer/esp/esp32-lunux-cpputest/build-host /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile /home/castro/developer/esp/esp32-lunux-cpputest/build-host/tests/readfile/CMakeFiles/readfile_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/readfile/CMakeFiles/readfile_test.dir/depend

