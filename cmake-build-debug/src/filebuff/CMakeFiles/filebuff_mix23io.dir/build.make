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
include src/filebuff/CMakeFiles/filebuff_mix23io.dir/depend.make

# Include the progress variables for this target.
include src/filebuff/CMakeFiles/filebuff_mix23io.dir/progress.make

# Include the compile flags for this target's objects.
include src/filebuff/CMakeFiles/filebuff_mix23io.dir/flags.make

src/filebuff/CMakeFiles/filebuff_mix23io.dir/mix23io.c.o: src/filebuff/CMakeFiles/filebuff_mix23io.dir/flags.make
src/filebuff/CMakeFiles/filebuff_mix23io.dir/mix23io.c.o: ../src/filebuff/mix23io.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/filebuff/CMakeFiles/filebuff_mix23io.dir/mix23io.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/filebuff_mix23io.dir/mix23io.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/filebuff/mix23io.c

src/filebuff/CMakeFiles/filebuff_mix23io.dir/mix23io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/filebuff_mix23io.dir/mix23io.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/filebuff/mix23io.c > CMakeFiles/filebuff_mix23io.dir/mix23io.c.i

src/filebuff/CMakeFiles/filebuff_mix23io.dir/mix23io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/filebuff_mix23io.dir/mix23io.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/filebuff/mix23io.c -o CMakeFiles/filebuff_mix23io.dir/mix23io.c.s

# Object files for target filebuff_mix23io
filebuff_mix23io_OBJECTS = \
"CMakeFiles/filebuff_mix23io.dir/mix23io.c.o"

# External object files for target filebuff_mix23io
filebuff_mix23io_EXTERNAL_OBJECTS =

src/filebuff/filebuff_mix23io: src/filebuff/CMakeFiles/filebuff_mix23io.dir/mix23io.c.o
src/filebuff/filebuff_mix23io: src/filebuff/CMakeFiles/filebuff_mix23io.dir/build.make
src/filebuff/filebuff_mix23io: libtlpl_lib.so
src/filebuff/filebuff_mix23io: src/filebuff/CMakeFiles/filebuff_mix23io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable filebuff_mix23io"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filebuff_mix23io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/filebuff/CMakeFiles/filebuff_mix23io.dir/build: src/filebuff/filebuff_mix23io

.PHONY : src/filebuff/CMakeFiles/filebuff_mix23io.dir/build

src/filebuff/CMakeFiles/filebuff_mix23io.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff && $(CMAKE_COMMAND) -P CMakeFiles/filebuff_mix23io.dir/cmake_clean.cmake
.PHONY : src/filebuff/CMakeFiles/filebuff_mix23io.dir/clean

src/filebuff/CMakeFiles/filebuff_mix23io.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/filebuff /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/filebuff/CMakeFiles/filebuff_mix23io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/filebuff/CMakeFiles/filebuff_mix23io.dir/depend

