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
include src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/depend.make

# Include the progress variables for this target.
include src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/progress.make

# Include the compile flags for this target's objects.
include src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/flags.make

src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.o: src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/flags.make
src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.o: ../src/procpri/t_sched_getaffinity.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/procpri/t_sched_getaffinity.c

src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/procpri/t_sched_getaffinity.c > CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.i

src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/procpri/t_sched_getaffinity.c -o CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.s

# Object files for target procpri_t_sched_getaffinity
procpri_t_sched_getaffinity_OBJECTS = \
"CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.o"

# External object files for target procpri_t_sched_getaffinity
procpri_t_sched_getaffinity_EXTERNAL_OBJECTS =

src/procpri/procpri_t_sched_getaffinity: src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/t_sched_getaffinity.c.o
src/procpri/procpri_t_sched_getaffinity: src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/build.make
src/procpri/procpri_t_sched_getaffinity: libtlpl_lib.so
src/procpri/procpri_t_sched_getaffinity: src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable procpri_t_sched_getaffinity"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/procpri_t_sched_getaffinity.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/build: src/procpri/procpri_t_sched_getaffinity

.PHONY : src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/build

src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri && $(CMAKE_COMMAND) -P CMakeFiles/procpri_t_sched_getaffinity.dir/cmake_clean.cmake
.PHONY : src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/clean

src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/procpri /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri /media/wangbin/36005E93005E59C7/tlpl/build/src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/procpri/CMakeFiles/procpri_t_sched_getaffinity.dir/depend

