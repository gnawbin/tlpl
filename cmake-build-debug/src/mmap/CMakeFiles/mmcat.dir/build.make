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
include src/mmap/CMakeFiles/mmcat.dir/depend.make

# Include the progress variables for this target.
include src/mmap/CMakeFiles/mmcat.dir/progress.make

# Include the compile flags for this target's objects.
include src/mmap/CMakeFiles/mmcat.dir/flags.make

src/mmap/CMakeFiles/mmcat.dir/mmcat.c.o: src/mmap/CMakeFiles/mmcat.dir/flags.make
src/mmap/CMakeFiles/mmcat.dir/mmcat.c.o: ../src/mmap/mmcat.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/mmap/CMakeFiles/mmcat.dir/mmcat.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/mmcat.dir/mmcat.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/mmap/mmcat.c

src/mmap/CMakeFiles/mmcat.dir/mmcat.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/mmcat.dir/mmcat.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/mmap/mmcat.c > CMakeFiles/mmcat.dir/mmcat.c.i

src/mmap/CMakeFiles/mmcat.dir/mmcat.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/mmcat.dir/mmcat.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/mmap/mmcat.c -o CMakeFiles/mmcat.dir/mmcat.c.s

# Object files for target mmcat
mmcat_OBJECTS = \
"CMakeFiles/mmcat.dir/mmcat.c.o"

# External object files for target mmcat
mmcat_EXTERNAL_OBJECTS =

src/mmap/mmcat: src/mmap/CMakeFiles/mmcat.dir/mmcat.c.o
src/mmap/mmcat: src/mmap/CMakeFiles/mmcat.dir/build.make
src/mmap/mmcat: libtlpl_lib.so
src/mmap/mmcat: src/mmap/CMakeFiles/mmcat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable mmcat"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mmcat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/mmap/CMakeFiles/mmcat.dir/build: src/mmap/mmcat

.PHONY : src/mmap/CMakeFiles/mmcat.dir/build

src/mmap/CMakeFiles/mmcat.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap && $(CMAKE_COMMAND) -P CMakeFiles/mmcat.dir/cmake_clean.cmake
.PHONY : src/mmap/CMakeFiles/mmcat.dir/clean

src/mmap/CMakeFiles/mmcat.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/mmap /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/mmap/CMakeFiles/mmcat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/mmap/CMakeFiles/mmcat.dir/depend

