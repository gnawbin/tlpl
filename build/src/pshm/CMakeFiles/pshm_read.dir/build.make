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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/wangbin/36005E93005E59C7/tlpl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/wangbin/36005E93005E59C7/tlpl/build

# Include any dependencies generated for this target.
include src/pshm/CMakeFiles/pshm_read.dir/depend.make

# Include the progress variables for this target.
include src/pshm/CMakeFiles/pshm_read.dir/progress.make

# Include the compile flags for this target's objects.
include src/pshm/CMakeFiles/pshm_read.dir/flags.make

src/pshm/CMakeFiles/pshm_read.dir/pshm_read.c.o: src/pshm/CMakeFiles/pshm_read.dir/flags.make
src/pshm/CMakeFiles/pshm_read.dir/pshm_read.c.o: ../src/pshm/pshm_read.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/pshm/CMakeFiles/pshm_read.dir/pshm_read.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pshm_read.dir/pshm_read.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/pshm/pshm_read.c

src/pshm/CMakeFiles/pshm_read.dir/pshm_read.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pshm_read.dir/pshm_read.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/pshm/pshm_read.c > CMakeFiles/pshm_read.dir/pshm_read.c.i

src/pshm/CMakeFiles/pshm_read.dir/pshm_read.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pshm_read.dir/pshm_read.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/pshm/pshm_read.c -o CMakeFiles/pshm_read.dir/pshm_read.c.s

# Object files for target pshm_read
pshm_read_OBJECTS = \
"CMakeFiles/pshm_read.dir/pshm_read.c.o"

# External object files for target pshm_read
pshm_read_EXTERNAL_OBJECTS =

src/pshm/pshm_read: src/pshm/CMakeFiles/pshm_read.dir/pshm_read.c.o
src/pshm/pshm_read: src/pshm/CMakeFiles/pshm_read.dir/build.make
src/pshm/pshm_read: libtlpl_lib.so
src/pshm/pshm_read: src/pshm/CMakeFiles/pshm_read.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pshm_read"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pshm_read.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pshm/CMakeFiles/pshm_read.dir/build: src/pshm/pshm_read

.PHONY : src/pshm/CMakeFiles/pshm_read.dir/build

src/pshm/CMakeFiles/pshm_read.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm && $(CMAKE_COMMAND) -P CMakeFiles/pshm_read.dir/cmake_clean.cmake
.PHONY : src/pshm/CMakeFiles/pshm_read.dir/clean

src/pshm/CMakeFiles/pshm_read.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/pshm /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm /media/wangbin/36005E93005E59C7/tlpl/build/src/pshm/CMakeFiles/pshm_read.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pshm/CMakeFiles/pshm_read.dir/depend

