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
include src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/depend.make

# Include the progress variables for this target.
include src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/progress.make

# Include the compile flags for this target's objects.
include src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/flags.make

src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.o: src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/flags.make
src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.o: ../src/svipc/svmsg_demo_server.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/svipc/svmsg_demo_server.c

src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/svipc/svmsg_demo_server.c > CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.i

src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/svipc/svmsg_demo_server.c -o CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.s

# Object files for target svipc_svmsg_demo_server
svipc_svmsg_demo_server_OBJECTS = \
"CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.o"

# External object files for target svipc_svmsg_demo_server
svipc_svmsg_demo_server_EXTERNAL_OBJECTS =

src/svipc/svipc_svmsg_demo_server: src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/svmsg_demo_server.c.o
src/svipc/svipc_svmsg_demo_server: src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/build.make
src/svipc/svipc_svmsg_demo_server: libtlpl_lib.so
src/svipc/svipc_svmsg_demo_server: src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable svipc_svmsg_demo_server"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/svipc_svmsg_demo_server.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/build: src/svipc/svipc_svmsg_demo_server

.PHONY : src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/build

src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc && $(CMAKE_COMMAND) -P CMakeFiles/svipc_svmsg_demo_server.dir/cmake_clean.cmake
.PHONY : src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/clean

src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/svipc /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/svipc/CMakeFiles/svipc_svmsg_demo_server.dir/depend

