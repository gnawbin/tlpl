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
include src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/depend.make

# Include the progress variables for this target.
include src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/progress.make

# Include the compile flags for this target's objects.
include src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/flags.make

src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.o: src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/flags.make
src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.o: ../src/pipes/fifo_seqnum_client.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/pipes/fifo_seqnum_client.c

src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/pipes/fifo_seqnum_client.c > CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.i

src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/pipes/fifo_seqnum_client.c -o CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.s

# Object files for target pipes_fifo_seqnum_client
pipes_fifo_seqnum_client_OBJECTS = \
"CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.o"

# External object files for target pipes_fifo_seqnum_client
pipes_fifo_seqnum_client_EXTERNAL_OBJECTS =

src/pipes/pipes_fifo_seqnum_client: src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/fifo_seqnum_client.c.o
src/pipes/pipes_fifo_seqnum_client: src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/build.make
src/pipes/pipes_fifo_seqnum_client: libtlpl_lib.so
src/pipes/pipes_fifo_seqnum_client: src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pipes_fifo_seqnum_client"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pipes_fifo_seqnum_client.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/build: src/pipes/pipes_fifo_seqnum_client

.PHONY : src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/build

src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes && $(CMAKE_COMMAND) -P CMakeFiles/pipes_fifo_seqnum_client.dir/cmake_clean.cmake
.PHONY : src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/clean

src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/pipes /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes /media/wangbin/36005E93005E59C7/tlpl/build/src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pipes/CMakeFiles/pipes_fifo_seqnum_client.dir/depend

