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
include src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/depend.make

# Include the progress variables for this target.
include src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/progress.make

# Include the compile flags for this target's objects.
include src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/flags.make

src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.o: src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/flags.make
src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.o: ../src/pgsjc/disc_SIGHUP.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/pgsjc/disc_SIGHUP.c

src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/pgsjc/disc_SIGHUP.c > CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.i

src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/pgsjc/disc_SIGHUP.c -o CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.s

# Object files for target pgsjc_disc_SIGHUP
pgsjc_disc_SIGHUP_OBJECTS = \
"CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.o"

# External object files for target pgsjc_disc_SIGHUP
pgsjc_disc_SIGHUP_EXTERNAL_OBJECTS =

src/pgsjc/pgsjc_disc_SIGHUP: src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/disc_SIGHUP.c.o
src/pgsjc/pgsjc_disc_SIGHUP: src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/build.make
src/pgsjc/pgsjc_disc_SIGHUP: libtlpl_lib.so
src/pgsjc/pgsjc_disc_SIGHUP: src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable pgsjc_disc_SIGHUP"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pgsjc_disc_SIGHUP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/build: src/pgsjc/pgsjc_disc_SIGHUP

.PHONY : src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/build

src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc && $(CMAKE_COMMAND) -P CMakeFiles/pgsjc_disc_SIGHUP.dir/cmake_clean.cmake
.PHONY : src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/clean

src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/pgsjc /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pgsjc/CMakeFiles/pgsjc_disc_SIGHUP.dir/depend
