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
include src/tty/CMakeFiles/tty_no_echo.dir/depend.make

# Include the progress variables for this target.
include src/tty/CMakeFiles/tty_no_echo.dir/progress.make

# Include the compile flags for this target's objects.
include src/tty/CMakeFiles/tty_no_echo.dir/flags.make

src/tty/CMakeFiles/tty_no_echo.dir/no_echo.c.o: src/tty/CMakeFiles/tty_no_echo.dir/flags.make
src/tty/CMakeFiles/tty_no_echo.dir/no_echo.c.o: ../src/tty/no_echo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/tty/CMakeFiles/tty_no_echo.dir/no_echo.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tty_no_echo.dir/no_echo.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/tty/no_echo.c

src/tty/CMakeFiles/tty_no_echo.dir/no_echo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tty_no_echo.dir/no_echo.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/tty/no_echo.c > CMakeFiles/tty_no_echo.dir/no_echo.c.i

src/tty/CMakeFiles/tty_no_echo.dir/no_echo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tty_no_echo.dir/no_echo.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/tty/no_echo.c -o CMakeFiles/tty_no_echo.dir/no_echo.c.s

# Object files for target tty_no_echo
tty_no_echo_OBJECTS = \
"CMakeFiles/tty_no_echo.dir/no_echo.c.o"

# External object files for target tty_no_echo
tty_no_echo_EXTERNAL_OBJECTS =

src/tty/tty_no_echo: src/tty/CMakeFiles/tty_no_echo.dir/no_echo.c.o
src/tty/tty_no_echo: src/tty/CMakeFiles/tty_no_echo.dir/build.make
src/tty/tty_no_echo: libtlpl_lib.so
src/tty/tty_no_echo: libtty_tty_functions.so
src/tty/tty_no_echo: libtty_ttyname.so
src/tty/tty_no_echo: src/tty/CMakeFiles/tty_no_echo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable tty_no_echo"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tty_no_echo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/tty/CMakeFiles/tty_no_echo.dir/build: src/tty/tty_no_echo

.PHONY : src/tty/CMakeFiles/tty_no_echo.dir/build

src/tty/CMakeFiles/tty_no_echo.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty && $(CMAKE_COMMAND) -P CMakeFiles/tty_no_echo.dir/cmake_clean.cmake
.PHONY : src/tty/CMakeFiles/tty_no_echo.dir/clean

src/tty/CMakeFiles/tty_no_echo.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/tty /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/tty/CMakeFiles/tty_no_echo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/tty/CMakeFiles/tty_no_echo.dir/depend

