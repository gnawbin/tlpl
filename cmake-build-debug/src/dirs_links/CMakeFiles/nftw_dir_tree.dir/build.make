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
include src/dirs_links/CMakeFiles/nftw_dir_tree.dir/depend.make

# Include the progress variables for this target.
include src/dirs_links/CMakeFiles/nftw_dir_tree.dir/progress.make

# Include the compile flags for this target's objects.
include src/dirs_links/CMakeFiles/nftw_dir_tree.dir/flags.make

src/dirs_links/CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.o: src/dirs_links/CMakeFiles/nftw_dir_tree.dir/flags.make
src/dirs_links/CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.o: ../src/dirs_links/nftw_dir_tree.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/dirs_links/CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/dirs_links/nftw_dir_tree.c

src/dirs_links/CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/dirs_links/nftw_dir_tree.c > CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.i

src/dirs_links/CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/dirs_links/nftw_dir_tree.c -o CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.s

# Object files for target nftw_dir_tree
nftw_dir_tree_OBJECTS = \
"CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.o"

# External object files for target nftw_dir_tree
nftw_dir_tree_EXTERNAL_OBJECTS =

src/dirs_links/nftw_dir_tree: src/dirs_links/CMakeFiles/nftw_dir_tree.dir/nftw_dir_tree.c.o
src/dirs_links/nftw_dir_tree: src/dirs_links/CMakeFiles/nftw_dir_tree.dir/build.make
src/dirs_links/nftw_dir_tree: libtlpl_lib.so
src/dirs_links/nftw_dir_tree: src/dirs_links/CMakeFiles/nftw_dir_tree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable nftw_dir_tree"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nftw_dir_tree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/dirs_links/CMakeFiles/nftw_dir_tree.dir/build: src/dirs_links/nftw_dir_tree

.PHONY : src/dirs_links/CMakeFiles/nftw_dir_tree.dir/build

src/dirs_links/CMakeFiles/nftw_dir_tree.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links && $(CMAKE_COMMAND) -P CMakeFiles/nftw_dir_tree.dir/cmake_clean.cmake
.PHONY : src/dirs_links/CMakeFiles/nftw_dir_tree.dir/clean

src/dirs_links/CMakeFiles/nftw_dir_tree.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/dirs_links /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/dirs_links/CMakeFiles/nftw_dir_tree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/dirs_links/CMakeFiles/nftw_dir_tree.dir/depend

