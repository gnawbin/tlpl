# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /media/wangbin/36005E93005E59C7/CLion-2019.2/clion-2019.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /media/wangbin/36005E93005E59C7/CLion-2019.2/clion-2019.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/wangbin/36005E93005E59C7/tlpl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug

# Include any dependencies generated for this target.
include src/fileio/CMakeFiles/large_file.dir/depend.make

# Include the progress variables for this target.
include src/fileio/CMakeFiles/large_file.dir/progress.make

# Include the compile flags for this target's objects.
include src/fileio/CMakeFiles/large_file.dir/flags.make

src/fileio/CMakeFiles/large_file.dir/large_file.c.o: src/fileio/CMakeFiles/large_file.dir/flags.make
src/fileio/CMakeFiles/large_file.dir/large_file.c.o: ../src/fileio/large_file.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/fileio/CMakeFiles/large_file.dir/large_file.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/large_file.dir/large_file.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/fileio/large_file.c

src/fileio/CMakeFiles/large_file.dir/large_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/large_file.dir/large_file.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/fileio/large_file.c > CMakeFiles/large_file.dir/large_file.c.i

src/fileio/CMakeFiles/large_file.dir/large_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/large_file.dir/large_file.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/fileio/large_file.c -o CMakeFiles/large_file.dir/large_file.c.s

# Object files for target large_file
large_file_OBJECTS = \
"CMakeFiles/large_file.dir/large_file.c.o"

# External object files for target large_file
large_file_EXTERNAL_OBJECTS =

src/fileio/large_file: src/fileio/CMakeFiles/large_file.dir/large_file.c.o
src/fileio/large_file: src/fileio/CMakeFiles/large_file.dir/build.make
src/fileio/large_file: libtlpl_lib.so
src/fileio/large_file: src/fileio/CMakeFiles/large_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable large_file"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/large_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/fileio/CMakeFiles/large_file.dir/build: src/fileio/large_file

.PHONY : src/fileio/CMakeFiles/large_file.dir/build

src/fileio/CMakeFiles/large_file.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio && $(CMAKE_COMMAND) -P CMakeFiles/large_file.dir/cmake_clean.cmake
.PHONY : src/fileio/CMakeFiles/large_file.dir/clean

src/fileio/CMakeFiles/large_file.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/fileio /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/fileio/CMakeFiles/large_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/fileio/CMakeFiles/large_file.dir/depend

