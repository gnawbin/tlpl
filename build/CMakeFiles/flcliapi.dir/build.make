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
include CMakeFiles/flcliapi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/flcliapi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/flcliapi.dir/flags.make

CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.o: CMakeFiles/flcliapi.dir/flags.make
CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.o: ../src/zmq_c/lib/flcliapi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/zmq_c/lib/flcliapi.c

CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/zmq_c/lib/flcliapi.c > CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.i

CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/zmq_c/lib/flcliapi.c -o CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.s

# Object files for target flcliapi
flcliapi_OBJECTS = \
"CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.o"

# External object files for target flcliapi
flcliapi_EXTERNAL_OBJECTS =

libflcliapi.so: CMakeFiles/flcliapi.dir/src/zmq_c/lib/flcliapi.c.o
libflcliapi.so: CMakeFiles/flcliapi.dir/build.make
libflcliapi.so: CMakeFiles/flcliapi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libflcliapi.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/flcliapi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/flcliapi.dir/build: libflcliapi.so

.PHONY : CMakeFiles/flcliapi.dir/build

CMakeFiles/flcliapi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/flcliapi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/flcliapi.dir/clean

CMakeFiles/flcliapi.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles/flcliapi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/flcliapi.dir/depend

