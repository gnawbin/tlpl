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
include src/sockets/CMakeFiles/is_echo_cl.dir/depend.make

# Include the progress variables for this target.
include src/sockets/CMakeFiles/is_echo_cl.dir/progress.make

# Include the compile flags for this target's objects.
include src/sockets/CMakeFiles/is_echo_cl.dir/flags.make

src/sockets/CMakeFiles/is_echo_cl.dir/is_echo_cl.c.o: src/sockets/CMakeFiles/is_echo_cl.dir/flags.make
src/sockets/CMakeFiles/is_echo_cl.dir/is_echo_cl.c.o: ../src/sockets/is_echo_cl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/sockets/CMakeFiles/is_echo_cl.dir/is_echo_cl.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/is_echo_cl.dir/is_echo_cl.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/sockets/is_echo_cl.c

src/sockets/CMakeFiles/is_echo_cl.dir/is_echo_cl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/is_echo_cl.dir/is_echo_cl.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/sockets/is_echo_cl.c > CMakeFiles/is_echo_cl.dir/is_echo_cl.c.i

src/sockets/CMakeFiles/is_echo_cl.dir/is_echo_cl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/is_echo_cl.dir/is_echo_cl.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/sockets/is_echo_cl.c -o CMakeFiles/is_echo_cl.dir/is_echo_cl.c.s

# Object files for target is_echo_cl
is_echo_cl_OBJECTS = \
"CMakeFiles/is_echo_cl.dir/is_echo_cl.c.o"

# External object files for target is_echo_cl
is_echo_cl_EXTERNAL_OBJECTS =

src/sockets/is_echo_cl: src/sockets/CMakeFiles/is_echo_cl.dir/is_echo_cl.c.o
src/sockets/is_echo_cl: src/sockets/CMakeFiles/is_echo_cl.dir/build.make
src/sockets/is_echo_cl: libtlpl_lib.so
src/sockets/is_echo_cl: libinet_sockets.so
src/sockets/is_echo_cl: librdwrn.so
src/sockets/is_echo_cl: libunix_sockets.so
src/sockets/is_echo_cl: libread_line_buf.so
src/sockets/is_echo_cl: libread_line.so
src/sockets/is_echo_cl: libsendfile.so
src/sockets/is_echo_cl: src/sockets/CMakeFiles/is_echo_cl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable is_echo_cl"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/is_echo_cl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sockets/CMakeFiles/is_echo_cl.dir/build: src/sockets/is_echo_cl

.PHONY : src/sockets/CMakeFiles/is_echo_cl.dir/build

src/sockets/CMakeFiles/is_echo_cl.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && $(CMAKE_COMMAND) -P CMakeFiles/is_echo_cl.dir/cmake_clean.cmake
.PHONY : src/sockets/CMakeFiles/is_echo_cl.dir/clean

src/sockets/CMakeFiles/is_echo_cl.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/sockets /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets/CMakeFiles/is_echo_cl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sockets/CMakeFiles/is_echo_cl.dir/depend

