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
include src/pty/CMakeFiles/signals_script.dir/depend.make

# Include the progress variables for this target.
include src/pty/CMakeFiles/signals_script.dir/progress.make

# Include the compile flags for this target's objects.
include src/pty/CMakeFiles/signals_script.dir/flags.make

src/pty/CMakeFiles/signals_script.dir/script.c.o: src/pty/CMakeFiles/signals_script.dir/flags.make
src/pty/CMakeFiles/signals_script.dir/script.c.o: ../src/pty/script.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/pty/CMakeFiles/signals_script.dir/script.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/signals_script.dir/script.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/pty/script.c

src/pty/CMakeFiles/signals_script.dir/script.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/signals_script.dir/script.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/pty/script.c > CMakeFiles/signals_script.dir/script.c.i

src/pty/CMakeFiles/signals_script.dir/script.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/signals_script.dir/script.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/pty/script.c -o CMakeFiles/signals_script.dir/script.c.s

# Object files for target signals_script
signals_script_OBJECTS = \
"CMakeFiles/signals_script.dir/script.c.o"

# External object files for target signals_script
signals_script_EXTERNAL_OBJECTS =

src/pty/signals_script: src/pty/CMakeFiles/signals_script.dir/script.c.o
src/pty/signals_script: src/pty/CMakeFiles/signals_script.dir/build.make
src/pty/signals_script: libsignals_signal_functions.so
src/pty/signals_script: libsignals_signal.so
src/pty/signals_script: libsignals_siginterrupt.so
src/pty/signals_script: libtlpl_lib.so
src/pty/signals_script: src/pty/CMakeFiles/signals_script.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable signals_script"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/signals_script.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/pty/CMakeFiles/signals_script.dir/build: src/pty/signals_script

.PHONY : src/pty/CMakeFiles/signals_script.dir/build

src/pty/CMakeFiles/signals_script.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty && $(CMAKE_COMMAND) -P CMakeFiles/signals_script.dir/cmake_clean.cmake
.PHONY : src/pty/CMakeFiles/signals_script.dir/clean

src/pty/CMakeFiles/signals_script.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/pty /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/pty/CMakeFiles/signals_script.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/pty/CMakeFiles/signals_script.dir/depend
