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
include src/signals/CMakeFiles/timers_t_sigsuspend.dir/depend.make

# Include the progress variables for this target.
include src/signals/CMakeFiles/timers_t_sigsuspend.dir/progress.make

# Include the compile flags for this target's objects.
include src/signals/CMakeFiles/timers_t_sigsuspend.dir/flags.make

src/signals/CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.o: src/signals/CMakeFiles/timers_t_sigsuspend.dir/flags.make
src/signals/CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.o: ../src/signals/t_sigsuspend.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/signals/CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/signals/t_sigsuspend.c

src/signals/CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/signals/t_sigsuspend.c > CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.i

src/signals/CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/signals/t_sigsuspend.c -o CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.s

# Object files for target timers_t_sigsuspend
timers_t_sigsuspend_OBJECTS = \
"CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.o"

# External object files for target timers_t_sigsuspend
timers_t_sigsuspend_EXTERNAL_OBJECTS =

src/signals/timers_t_sigsuspend: src/signals/CMakeFiles/timers_t_sigsuspend.dir/t_sigsuspend.c.o
src/signals/timers_t_sigsuspend: src/signals/CMakeFiles/timers_t_sigsuspend.dir/build.make
src/signals/timers_t_sigsuspend: libtimers_itimerspec_from_str.so
src/signals/timers_t_sigsuspend: libtlpl_lib.so
src/signals/timers_t_sigsuspend: src/signals/CMakeFiles/timers_t_sigsuspend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable timers_t_sigsuspend"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/timers_t_sigsuspend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/signals/CMakeFiles/timers_t_sigsuspend.dir/build: src/signals/timers_t_sigsuspend

.PHONY : src/signals/CMakeFiles/timers_t_sigsuspend.dir/build

src/signals/CMakeFiles/timers_t_sigsuspend.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals && $(CMAKE_COMMAND) -P CMakeFiles/timers_t_sigsuspend.dir/cmake_clean.cmake
.PHONY : src/signals/CMakeFiles/timers_t_sigsuspend.dir/clean

src/signals/CMakeFiles/timers_t_sigsuspend.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/signals /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/signals/CMakeFiles/timers_t_sigsuspend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/signals/CMakeFiles/timers_t_sigsuspend.dir/depend

