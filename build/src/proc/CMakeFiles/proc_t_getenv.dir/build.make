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
include src/proc/CMakeFiles/proc_t_getenv.dir/depend.make

# Include the progress variables for this target.
include src/proc/CMakeFiles/proc_t_getenv.dir/progress.make

# Include the compile flags for this target's objects.
include src/proc/CMakeFiles/proc_t_getenv.dir/flags.make

src/proc/CMakeFiles/proc_t_getenv.dir/t_getenv.c.o: src/proc/CMakeFiles/proc_t_getenv.dir/flags.make
src/proc/CMakeFiles/proc_t_getenv.dir/t_getenv.c.o: ../src/proc/t_getenv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/proc/CMakeFiles/proc_t_getenv.dir/t_getenv.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/proc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/proc_t_getenv.dir/t_getenv.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/proc/t_getenv.c

src/proc/CMakeFiles/proc_t_getenv.dir/t_getenv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/proc_t_getenv.dir/t_getenv.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/proc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/proc/t_getenv.c > CMakeFiles/proc_t_getenv.dir/t_getenv.c.i

src/proc/CMakeFiles/proc_t_getenv.dir/t_getenv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/proc_t_getenv.dir/t_getenv.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/proc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/proc/t_getenv.c -o CMakeFiles/proc_t_getenv.dir/t_getenv.c.s

# Object files for target proc_t_getenv
proc_t_getenv_OBJECTS = \
"CMakeFiles/proc_t_getenv.dir/t_getenv.c.o"

# External object files for target proc_t_getenv
proc_t_getenv_EXTERNAL_OBJECTS =

src/proc/proc_t_getenv: src/proc/CMakeFiles/proc_t_getenv.dir/t_getenv.c.o
src/proc/proc_t_getenv: src/proc/CMakeFiles/proc_t_getenv.dir/build.make
src/proc/proc_t_getenv: libtlpl_lib.so
src/proc/proc_t_getenv: src/proc/CMakeFiles/proc_t_getenv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable proc_t_getenv"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/proc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/proc_t_getenv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/proc/CMakeFiles/proc_t_getenv.dir/build: src/proc/proc_t_getenv

.PHONY : src/proc/CMakeFiles/proc_t_getenv.dir/build

src/proc/CMakeFiles/proc_t_getenv.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/proc && $(CMAKE_COMMAND) -P CMakeFiles/proc_t_getenv.dir/cmake_clean.cmake
.PHONY : src/proc/CMakeFiles/proc_t_getenv.dir/clean

src/proc/CMakeFiles/proc_t_getenv.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/proc /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/proc /media/wangbin/36005E93005E59C7/tlpl/build/src/proc/CMakeFiles/proc_t_getenv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/proc/CMakeFiles/proc_t_getenv.dir/depend
