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
include src/pty/CMakeFiles/unbuffer.dir/depend.make

# Include the progress variables for this target.
include src/pty/CMakeFiles/unbuffer.dir/progress.make

# Include the compile flags for this target's objects.
include src/pty/CMakeFiles/unbuffer.dir/flags.make

src/pty/CMakeFiles/unbuffer.dir/unbuffer.c.o: src/pty/CMakeFiles/unbuffer.dir/flags.make
src/pty/CMakeFiles/unbuffer.dir/unbuffer.c.o: ../src/pty/unbuffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/pty/CMakeFiles/unbuffer.dir/unbuffer.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/unbuffer.dir/unbuffer.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/pty/unbuffer.c

src/pty/CMakeFiles/unbuffer.dir/unbuffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/unbuffer.dir/unbuffer.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/pty/unbuffer.c > CMakeFiles/unbuffer.dir/unbuffer.c.i

src/pty/CMakeFiles/unbuffer.dir/unbuffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/unbuffer.dir/unbuffer.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/pty/unbuffer.c -o CMakeFiles/unbuffer.dir/unbuffer.c.s

# Object files for target unbuffer
unbuffer_OBJECTS = \
"CMakeFiles/unbuffer.dir/unbuffer.c.o"

# External object files for target unbuffer
unbuffer_EXTERNAL_OBJECTS =

src/pty/unbuffer: src/pty/CMakeFiles/unbuffer.dir/unbuffer.c.o
src/pty/unbuffer: src/pty/CMakeFiles/unbuffer.dir/build.make
src/pty/unbuffer: libpty_fork.so
src/pty/unbuffer: libpty_master_open.so
src/pty/unbuffer: libpty_master_open_bsd.so
src/pty/unbuffer: libtlpl_lib.so
src/pty/unbuffer: src/pty/CMakeFiles/unbuffer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable unbuffer"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pty && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/unbuffer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pty/CMakeFiles/unbuffer.dir/build: src/pty/unbuffer

.PHONY : src/pty/CMakeFiles/unbuffer.dir/build

src/pty/CMakeFiles/unbuffer.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pty && $(CMAKE_COMMAND) -P CMakeFiles/unbuffer.dir/cmake_clean.cmake
.PHONY : src/pty/CMakeFiles/unbuffer.dir/clean

src/pty/CMakeFiles/unbuffer.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/pty /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/pty /media/wangbin/36005E93005E59C7/tlpl/build/src/pty/CMakeFiles/unbuffer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pty/CMakeFiles/unbuffer.dir/depend

