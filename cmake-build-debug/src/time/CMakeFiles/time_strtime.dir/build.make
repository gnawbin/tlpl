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
include src/time/CMakeFiles/time_strtime.dir/depend.make

# Include the progress variables for this target.
include src/time/CMakeFiles/time_strtime.dir/progress.make

# Include the compile flags for this target's objects.
include src/time/CMakeFiles/time_strtime.dir/flags.make

src/time/CMakeFiles/time_strtime.dir/strtime.c.o: src/time/CMakeFiles/time_strtime.dir/flags.make
src/time/CMakeFiles/time_strtime.dir/strtime.c.o: ../src/time/strtime.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/time/CMakeFiles/time_strtime.dir/strtime.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/time_strtime.dir/strtime.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/time/strtime.c

src/time/CMakeFiles/time_strtime.dir/strtime.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/time_strtime.dir/strtime.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/time/strtime.c > CMakeFiles/time_strtime.dir/strtime.c.i

src/time/CMakeFiles/time_strtime.dir/strtime.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/time_strtime.dir/strtime.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/time/strtime.c -o CMakeFiles/time_strtime.dir/strtime.c.s

# Object files for target time_strtime
time_strtime_OBJECTS = \
"CMakeFiles/time_strtime.dir/strtime.c.o"

# External object files for target time_strtime
time_strtime_EXTERNAL_OBJECTS =

src/time/time_strtime: src/time/CMakeFiles/time_strtime.dir/strtime.c.o
src/time/time_strtime: src/time/CMakeFiles/time_strtime.dir/build.make
src/time/time_strtime: libtlpl_lib.so
src/time/time_strtime: libtime_curr_time.so
src/time/time_strtime: src/time/CMakeFiles/time_strtime.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable time_strtime"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/time_strtime.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/time/CMakeFiles/time_strtime.dir/build: src/time/time_strtime

.PHONY : src/time/CMakeFiles/time_strtime.dir/build

src/time/CMakeFiles/time_strtime.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time && $(CMAKE_COMMAND) -P CMakeFiles/time_strtime.dir/cmake_clean.cmake
.PHONY : src/time/CMakeFiles/time_strtime.dir/clean

src/time/CMakeFiles/time_strtime.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/time /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/time/CMakeFiles/time_strtime.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/time/CMakeFiles/time_strtime.dir/depend
