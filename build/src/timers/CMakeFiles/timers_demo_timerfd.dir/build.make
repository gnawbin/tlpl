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
include src/timers/CMakeFiles/timers_demo_timerfd.dir/depend.make

# Include the progress variables for this target.
include src/timers/CMakeFiles/timers_demo_timerfd.dir/progress.make

# Include the compile flags for this target's objects.
include src/timers/CMakeFiles/timers_demo_timerfd.dir/flags.make

src/timers/CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.o: src/timers/CMakeFiles/timers_demo_timerfd.dir/flags.make
src/timers/CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.o: ../src/timers/demo_timerfd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/timers/CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/timers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/timers/demo_timerfd.c

src/timers/CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/timers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/timers/demo_timerfd.c > CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.i

src/timers/CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/timers && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/timers/demo_timerfd.c -o CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.s

# Object files for target timers_demo_timerfd
timers_demo_timerfd_OBJECTS = \
"CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.o"

# External object files for target timers_demo_timerfd
timers_demo_timerfd_EXTERNAL_OBJECTS =

src/timers/timers_demo_timerfd: src/timers/CMakeFiles/timers_demo_timerfd.dir/demo_timerfd.c.o
src/timers/timers_demo_timerfd: src/timers/CMakeFiles/timers_demo_timerfd.dir/build.make
src/timers/timers_demo_timerfd: libtimers_itimerspec_from_str.so
src/timers/timers_demo_timerfd: libtlpl_lib.so
src/timers/timers_demo_timerfd: src/timers/CMakeFiles/timers_demo_timerfd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable timers_demo_timerfd"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/timers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timers_demo_timerfd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/timers/CMakeFiles/timers_demo_timerfd.dir/build: src/timers/timers_demo_timerfd

.PHONY : src/timers/CMakeFiles/timers_demo_timerfd.dir/build

src/timers/CMakeFiles/timers_demo_timerfd.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/timers && $(CMAKE_COMMAND) -P CMakeFiles/timers_demo_timerfd.dir/cmake_clean.cmake
.PHONY : src/timers/CMakeFiles/timers_demo_timerfd.dir/clean

src/timers/CMakeFiles/timers_demo_timerfd.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/timers /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/timers /media/wangbin/36005E93005E59C7/tlpl/build/src/timers/CMakeFiles/timers_demo_timerfd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/timers/CMakeFiles/timers_demo_timerfd.dir/depend

