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
include src/procres/CMakeFiles/procres_rlimit_nproc.dir/depend.make

# Include the progress variables for this target.
include src/procres/CMakeFiles/procres_rlimit_nproc.dir/progress.make

# Include the compile flags for this target's objects.
include src/procres/CMakeFiles/procres_rlimit_nproc.dir/flags.make

src/procres/CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.o: src/procres/CMakeFiles/procres_rlimit_nproc.dir/flags.make
src/procres/CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.o: ../src/procres/rlimit_nproc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/procres/CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procres && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/procres/rlimit_nproc.c

src/procres/CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procres && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/procres/rlimit_nproc.c > CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.i

src/procres/CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procres && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/procres/rlimit_nproc.c -o CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.s

# Object files for target procres_rlimit_nproc
procres_rlimit_nproc_OBJECTS = \
"CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.o"

# External object files for target procres_rlimit_nproc
procres_rlimit_nproc_EXTERNAL_OBJECTS =

src/procres/procres_rlimit_nproc: src/procres/CMakeFiles/procres_rlimit_nproc.dir/rlimit_nproc.c.o
src/procres/procres_rlimit_nproc: src/procres/CMakeFiles/procres_rlimit_nproc.dir/build.make
src/procres/procres_rlimit_nproc: libtlpl_lib.so
src/procres/procres_rlimit_nproc: src/procres/CMakeFiles/procres_rlimit_nproc.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable procres_rlimit_nproc"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procres && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/procres_rlimit_nproc.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/procres/CMakeFiles/procres_rlimit_nproc.dir/build: src/procres/procres_rlimit_nproc

.PHONY : src/procres/CMakeFiles/procres_rlimit_nproc.dir/build

src/procres/CMakeFiles/procres_rlimit_nproc.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procres && $(CMAKE_COMMAND) -P CMakeFiles/procres_rlimit_nproc.dir/cmake_clean.cmake
.PHONY : src/procres/CMakeFiles/procres_rlimit_nproc.dir/clean

src/procres/CMakeFiles/procres_rlimit_nproc.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/procres /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/procres /media/wangbin/36005E93005E59C7/tlpl/build/src/procres/CMakeFiles/procres_rlimit_nproc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/procres/CMakeFiles/procres_rlimit_nproc.dir/depend

