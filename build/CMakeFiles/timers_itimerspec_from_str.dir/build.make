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
include CMakeFiles/timers_itimerspec_from_str.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/timers_itimerspec_from_str.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/timers_itimerspec_from_str.dir/flags.make

CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.o: CMakeFiles/timers_itimerspec_from_str.dir/flags.make
CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.o: ../src/timers/lib/itimerspec_from_str.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/timers/lib/itimerspec_from_str.c

CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/timers/lib/itimerspec_from_str.c > CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.i

CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/timers/lib/itimerspec_from_str.c -o CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.s

# Object files for target timers_itimerspec_from_str
timers_itimerspec_from_str_OBJECTS = \
"CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.o"

# External object files for target timers_itimerspec_from_str
timers_itimerspec_from_str_EXTERNAL_OBJECTS =

libtimers_itimerspec_from_str.so: CMakeFiles/timers_itimerspec_from_str.dir/src/timers/lib/itimerspec_from_str.c.o
libtimers_itimerspec_from_str.so: CMakeFiles/timers_itimerspec_from_str.dir/build.make
libtimers_itimerspec_from_str.so: CMakeFiles/timers_itimerspec_from_str.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libtimers_itimerspec_from_str.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timers_itimerspec_from_str.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/timers_itimerspec_from_str.dir/build: libtimers_itimerspec_from_str.so

.PHONY : CMakeFiles/timers_itimerspec_from_str.dir/build

CMakeFiles/timers_itimerspec_from_str.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/timers_itimerspec_from_str.dir/cmake_clean.cmake
.PHONY : CMakeFiles/timers_itimerspec_from_str.dir/clean

CMakeFiles/timers_itimerspec_from_str.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles/timers_itimerspec_from_str.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/timers_itimerspec_from_str.dir/depend

