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
include CMakeFiles/tty_tty_functions.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tty_tty_functions.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tty_tty_functions.dir/flags.make

CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.o: CMakeFiles/tty_tty_functions.dir/flags.make
CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.o: ../src/tty/lib/tty_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/tty/lib/tty_functions.c

CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/tty/lib/tty_functions.c > CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.i

CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/tty/lib/tty_functions.c -o CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.s

# Object files for target tty_tty_functions
tty_tty_functions_OBJECTS = \
"CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.o"

# External object files for target tty_tty_functions
tty_tty_functions_EXTERNAL_OBJECTS =

libtty_tty_functions.so: CMakeFiles/tty_tty_functions.dir/src/tty/lib/tty_functions.c.o
libtty_tty_functions.so: CMakeFiles/tty_tty_functions.dir/build.make
libtty_tty_functions.so: CMakeFiles/tty_tty_functions.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libtty_tty_functions.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tty_tty_functions.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tty_tty_functions.dir/build: libtty_tty_functions.so

.PHONY : CMakeFiles/tty_tty_functions.dir/build

CMakeFiles/tty_tty_functions.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tty_tty_functions.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tty_tty_functions.dir/clean

CMakeFiles/tty_tty_functions.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles/tty_tty_functions.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tty_tty_functions.dir/depend

