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
include src/psem/CMakeFiles/psem_post.dir/depend.make

# Include the progress variables for this target.
include src/psem/CMakeFiles/psem_post.dir/progress.make

# Include the compile flags for this target's objects.
include src/psem/CMakeFiles/psem_post.dir/flags.make

src/psem/CMakeFiles/psem_post.dir/psem_post.c.o: src/psem/CMakeFiles/psem_post.dir/flags.make
src/psem/CMakeFiles/psem_post.dir/psem_post.c.o: ../src/psem/psem_post.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/psem/CMakeFiles/psem_post.dir/psem_post.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/psem_post.dir/psem_post.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/psem/psem_post.c

src/psem/CMakeFiles/psem_post.dir/psem_post.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/psem_post.dir/psem_post.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/psem/psem_post.c > CMakeFiles/psem_post.dir/psem_post.c.i

src/psem/CMakeFiles/psem_post.dir/psem_post.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/psem_post.dir/psem_post.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/psem/psem_post.c -o CMakeFiles/psem_post.dir/psem_post.c.s

# Object files for target psem_post
psem_post_OBJECTS = \
"CMakeFiles/psem_post.dir/psem_post.c.o"

# External object files for target psem_post
psem_post_EXTERNAL_OBJECTS =

src/psem/psem_post: src/psem/CMakeFiles/psem_post.dir/psem_post.c.o
src/psem/psem_post: src/psem/CMakeFiles/psem_post.dir/build.make
src/psem/psem_post: libtlpl_lib.so
src/psem/psem_post: src/psem/CMakeFiles/psem_post.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable psem_post"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/psem_post.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/psem/CMakeFiles/psem_post.dir/build: src/psem/psem_post

.PHONY : src/psem/CMakeFiles/psem_post.dir/build

src/psem/CMakeFiles/psem_post.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem && $(CMAKE_COMMAND) -P CMakeFiles/psem_post.dir/cmake_clean.cmake
.PHONY : src/psem/CMakeFiles/psem_post.dir/clean

src/psem/CMakeFiles/psem_post.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/psem /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/psem/CMakeFiles/psem_post.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/psem/CMakeFiles/psem_post.dir/depend

