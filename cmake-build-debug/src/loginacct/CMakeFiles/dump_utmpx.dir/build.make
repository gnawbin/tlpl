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
include src/loginacct/CMakeFiles/dump_utmpx.dir/depend.make

# Include the progress variables for this target.
include src/loginacct/CMakeFiles/dump_utmpx.dir/progress.make

# Include the compile flags for this target's objects.
include src/loginacct/CMakeFiles/dump_utmpx.dir/flags.make

src/loginacct/CMakeFiles/dump_utmpx.dir/dump_utmpx.c.o: src/loginacct/CMakeFiles/dump_utmpx.dir/flags.make
src/loginacct/CMakeFiles/dump_utmpx.dir/dump_utmpx.c.o: ../src/loginacct/dump_utmpx.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/loginacct/CMakeFiles/dump_utmpx.dir/dump_utmpx.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dump_utmpx.dir/dump_utmpx.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/loginacct/dump_utmpx.c

src/loginacct/CMakeFiles/dump_utmpx.dir/dump_utmpx.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dump_utmpx.dir/dump_utmpx.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/loginacct/dump_utmpx.c > CMakeFiles/dump_utmpx.dir/dump_utmpx.c.i

src/loginacct/CMakeFiles/dump_utmpx.dir/dump_utmpx.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dump_utmpx.dir/dump_utmpx.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/loginacct/dump_utmpx.c -o CMakeFiles/dump_utmpx.dir/dump_utmpx.c.s

# Object files for target dump_utmpx
dump_utmpx_OBJECTS = \
"CMakeFiles/dump_utmpx.dir/dump_utmpx.c.o"

# External object files for target dump_utmpx
dump_utmpx_EXTERNAL_OBJECTS =

src/loginacct/dump_utmpx: src/loginacct/CMakeFiles/dump_utmpx.dir/dump_utmpx.c.o
src/loginacct/dump_utmpx: src/loginacct/CMakeFiles/dump_utmpx.dir/build.make
src/loginacct/dump_utmpx: libtlpl_lib.so
src/loginacct/dump_utmpx: src/loginacct/CMakeFiles/dump_utmpx.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable dump_utmpx"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dump_utmpx.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/loginacct/CMakeFiles/dump_utmpx.dir/build: src/loginacct/dump_utmpx

.PHONY : src/loginacct/CMakeFiles/dump_utmpx.dir/build

src/loginacct/CMakeFiles/dump_utmpx.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct && $(CMAKE_COMMAND) -P CMakeFiles/dump_utmpx.dir/cmake_clean.cmake
.PHONY : src/loginacct/CMakeFiles/dump_utmpx.dir/clean

src/loginacct/CMakeFiles/dump_utmpx.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/loginacct /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/loginacct/CMakeFiles/dump_utmpx.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/loginacct/CMakeFiles/dump_utmpx.dir/depend

