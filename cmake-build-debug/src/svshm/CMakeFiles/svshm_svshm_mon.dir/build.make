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
include src/svshm/CMakeFiles/svshm_svshm_mon.dir/depend.make

# Include the progress variables for this target.
include src/svshm/CMakeFiles/svshm_svshm_mon.dir/progress.make

# Include the compile flags for this target's objects.
include src/svshm/CMakeFiles/svshm_svshm_mon.dir/flags.make

src/svshm/CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.o: src/svshm/CMakeFiles/svshm_svshm_mon.dir/flags.make
src/svshm/CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.o: ../src/svshm/svshm_mon.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/svshm/CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/svshm/svshm_mon.c

src/svshm/CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/svshm/svshm_mon.c > CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.i

src/svshm/CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/svshm/svshm_mon.c -o CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.s

# Object files for target svshm_svshm_mon
svshm_svshm_mon_OBJECTS = \
"CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.o"

# External object files for target svshm_svshm_mon
svshm_svshm_mon_EXTERNAL_OBJECTS =

src/svshm/svshm_svshm_mon: src/svshm/CMakeFiles/svshm_svshm_mon.dir/svshm_mon.c.o
src/svshm/svshm_svshm_mon: src/svshm/CMakeFiles/svshm_svshm_mon.dir/build.make
src/svshm/svshm_svshm_mon: libtlpl_lib.so
src/svshm/svshm_svshm_mon: src/svshm/CMakeFiles/svshm_svshm_mon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable svshm_svshm_mon"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/svshm_svshm_mon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/svshm/CMakeFiles/svshm_svshm_mon.dir/build: src/svshm/svshm_svshm_mon

.PHONY : src/svshm/CMakeFiles/svshm_svshm_mon.dir/build

src/svshm/CMakeFiles/svshm_svshm_mon.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm && $(CMAKE_COMMAND) -P CMakeFiles/svshm_svshm_mon.dir/cmake_clean.cmake
.PHONY : src/svshm/CMakeFiles/svshm_svshm_mon.dir/clean

src/svshm/CMakeFiles/svshm_svshm_mon.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/svshm /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svshm/CMakeFiles/svshm_svshm_mon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/svshm/CMakeFiles/svshm_svshm_mon.dir/depend

