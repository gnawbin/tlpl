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
include CMakeFiles/c_mdwrkapi.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/c_mdwrkapi.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/c_mdwrkapi.dir/flags.make

CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.o: CMakeFiles/c_mdwrkapi.dir/flags.make
CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.o: ../src/zeromq_c_version/lib/mdwrkapi.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/zeromq_c_version/lib/mdwrkapi.c

CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/zeromq_c_version/lib/mdwrkapi.c > CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.i

CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/zeromq_c_version/lib/mdwrkapi.c -o CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.s

# Object files for target c_mdwrkapi
c_mdwrkapi_OBJECTS = \
"CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.o"

# External object files for target c_mdwrkapi
c_mdwrkapi_EXTERNAL_OBJECTS =

libc_mdwrkapi.so: CMakeFiles/c_mdwrkapi.dir/src/zeromq_c_version/lib/mdwrkapi.c.o
libc_mdwrkapi.so: CMakeFiles/c_mdwrkapi.dir/build.make
libc_mdwrkapi.so: CMakeFiles/c_mdwrkapi.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libc_mdwrkapi.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/c_mdwrkapi.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/c_mdwrkapi.dir/build: libc_mdwrkapi.so

.PHONY : CMakeFiles/c_mdwrkapi.dir/build

CMakeFiles/c_mdwrkapi.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/c_mdwrkapi.dir/cmake_clean.cmake
.PHONY : CMakeFiles/c_mdwrkapi.dir/clean

CMakeFiles/c_mdwrkapi.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles/c_mdwrkapi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/c_mdwrkapi.dir/depend

