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
include src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/depend.make

# Include the progress variables for this target.
include src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/progress.make

# Include the compile flags for this target's objects.
include src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/flags.make

src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.o: src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/flags.make
src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.o: ../src/svmsg/svmsg_receive.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/svmsg/svmsg_receive.c

src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/svmsg/svmsg_receive.c > CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.i

src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/svmsg/svmsg_receive.c -o CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.s

# Object files for target svmsg_svmsg_receive
svmsg_svmsg_receive_OBJECTS = \
"CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.o"

# External object files for target svmsg_svmsg_receive
svmsg_svmsg_receive_EXTERNAL_OBJECTS =

src/svmsg/svmsg_svmsg_receive: src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/svmsg_receive.c.o
src/svmsg/svmsg_svmsg_receive: src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/build.make
src/svmsg/svmsg_svmsg_receive: libtlpl_lib.so
src/svmsg/svmsg_svmsg_receive: src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable svmsg_svmsg_receive"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/svmsg_svmsg_receive.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/build: src/svmsg/svmsg_svmsg_receive

.PHONY : src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/build

src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg && $(CMAKE_COMMAND) -P CMakeFiles/svmsg_svmsg_receive.dir/cmake_clean.cmake
.PHONY : src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/clean

src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/svmsg /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/svmsg/CMakeFiles/svmsg_svmsg_receive.dir/depend

