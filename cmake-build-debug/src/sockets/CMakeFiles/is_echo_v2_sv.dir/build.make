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
include src/sockets/CMakeFiles/is_echo_v2_sv.dir/depend.make

# Include the progress variables for this target.
include src/sockets/CMakeFiles/is_echo_v2_sv.dir/progress.make

# Include the compile flags for this target's objects.
include src/sockets/CMakeFiles/is_echo_v2_sv.dir/flags.make

src/sockets/CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.o: src/sockets/CMakeFiles/is_echo_v2_sv.dir/flags.make
src/sockets/CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.o: ../src/sockets/is_echo_v2_sv.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/sockets/CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/sockets/is_echo_v2_sv.c

src/sockets/CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/sockets/is_echo_v2_sv.c > CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.i

src/sockets/CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/sockets/is_echo_v2_sv.c -o CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.s

# Object files for target is_echo_v2_sv
is_echo_v2_sv_OBJECTS = \
"CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.o"

# External object files for target is_echo_v2_sv
is_echo_v2_sv_EXTERNAL_OBJECTS =

src/sockets/is_echo_v2_sv: src/sockets/CMakeFiles/is_echo_v2_sv.dir/is_echo_v2_sv.c.o
src/sockets/is_echo_v2_sv: src/sockets/CMakeFiles/is_echo_v2_sv.dir/build.make
src/sockets/is_echo_v2_sv: libtlpl_lib.so
src/sockets/is_echo_v2_sv: libinet_sockets.so
src/sockets/is_echo_v2_sv: librdwrn.so
src/sockets/is_echo_v2_sv: libunix_sockets.so
src/sockets/is_echo_v2_sv: libread_line_buf.so
src/sockets/is_echo_v2_sv: libread_line.so
src/sockets/is_echo_v2_sv: libsendfile.so
src/sockets/is_echo_v2_sv: src/sockets/CMakeFiles/is_echo_v2_sv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable is_echo_v2_sv"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/is_echo_v2_sv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sockets/CMakeFiles/is_echo_v2_sv.dir/build: src/sockets/is_echo_v2_sv

.PHONY : src/sockets/CMakeFiles/is_echo_v2_sv.dir/build

src/sockets/CMakeFiles/is_echo_v2_sv.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets && $(CMAKE_COMMAND) -P CMakeFiles/is_echo_v2_sv.dir/cmake_clean.cmake
.PHONY : src/sockets/CMakeFiles/is_echo_v2_sv.dir/clean

src/sockets/CMakeFiles/is_echo_v2_sv.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/sockets /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/sockets/CMakeFiles/is_echo_v2_sv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sockets/CMakeFiles/is_echo_v2_sv.dir/depend

