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
include src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/depend.make

# Include the progress variables for this target.
include src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/progress.make

# Include the compile flags for this target's objects.
include src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/flags.make

src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.o: src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/flags.make
src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.o: ../src/tty/demo_SIGWINCH.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/tty/demo_SIGWINCH.c

src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/tty/demo_SIGWINCH.c > CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.i

src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/tty/demo_SIGWINCH.c -o CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.s

# Object files for target tty_demo_SIGWINCH
tty_demo_SIGWINCH_OBJECTS = \
"CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.o"

# External object files for target tty_demo_SIGWINCH
tty_demo_SIGWINCH_EXTERNAL_OBJECTS =

src/tty/tty_demo_SIGWINCH: src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/demo_SIGWINCH.c.o
src/tty/tty_demo_SIGWINCH: src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/build.make
src/tty/tty_demo_SIGWINCH: libtlpl_lib.so
src/tty/tty_demo_SIGWINCH: libtty_tty_functions.so
src/tty/tty_demo_SIGWINCH: libtty_ttyname.so
src/tty/tty_demo_SIGWINCH: src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tty_demo_SIGWINCH"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/tty && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tty_demo_SIGWINCH.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/build: src/tty/tty_demo_SIGWINCH

.PHONY : src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/build

src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/tty && $(CMAKE_COMMAND) -P CMakeFiles/tty_demo_SIGWINCH.dir/cmake_clean.cmake
.PHONY : src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/clean

src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/tty /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/tty /media/wangbin/36005E93005E59C7/tlpl/build/src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tty/CMakeFiles/tty_demo_SIGWINCH.dir/depend

