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
include src/tty/CMakeFiles/tty_new_intr.dir/depend.make

# Include the progress variables for this target.
include src/tty/CMakeFiles/tty_new_intr.dir/progress.make

# Include the compile flags for this target's objects.
include src/tty/CMakeFiles/tty_new_intr.dir/flags.make

src/tty/CMakeFiles/tty_new_intr.dir/new_intr.c.o: src/tty/CMakeFiles/tty_new_intr.dir/flags.make
src/tty/CMakeFiles/tty_new_intr.dir/new_intr.c.o: ../src/tty/new_intr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/tty/CMakeFiles/tty_new_intr.dir/new_intr.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tty_new_intr.dir/new_intr.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/tty/new_intr.c

src/tty/CMakeFiles/tty_new_intr.dir/new_intr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tty_new_intr.dir/new_intr.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/tty/new_intr.c > CMakeFiles/tty_new_intr.dir/new_intr.c.i

src/tty/CMakeFiles/tty_new_intr.dir/new_intr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tty_new_intr.dir/new_intr.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/tty/new_intr.c -o CMakeFiles/tty_new_intr.dir/new_intr.c.s

# Object files for target tty_new_intr
tty_new_intr_OBJECTS = \
"CMakeFiles/tty_new_intr.dir/new_intr.c.o"

# External object files for target tty_new_intr
tty_new_intr_EXTERNAL_OBJECTS =

src/tty/tty_new_intr: src/tty/CMakeFiles/tty_new_intr.dir/new_intr.c.o
src/tty/tty_new_intr: src/tty/CMakeFiles/tty_new_intr.dir/build.make
src/tty/tty_new_intr: libtlpl_lib.so
src/tty/tty_new_intr: libtty_tty_functions.so
src/tty/tty_new_intr: libtty_ttyname.so
src/tty/tty_new_intr: src/tty/CMakeFiles/tty_new_intr.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tty_new_intr"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tty_new_intr.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tty/CMakeFiles/tty_new_intr.dir/build: src/tty/tty_new_intr

.PHONY : src/tty/CMakeFiles/tty_new_intr.dir/build

src/tty/CMakeFiles/tty_new_intr.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && $(CMAKE_COMMAND) -P CMakeFiles/tty_new_intr.dir/cmake_clean.cmake
.PHONY : src/tty/CMakeFiles/tty_new_intr.dir/clean

src/tty/CMakeFiles/tty_new_intr.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/tty /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty/CMakeFiles/tty_new_intr.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tty/CMakeFiles/tty_new_intr.dir/depend

