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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /media/wangbin/36005E93005E59C7/tlpl

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /media/wangbin/36005E93005E59C7/tlpl/build

# Include any dependencies generated for this target.
include src/filesys/CMakeFiles/filesys_t_mount.dir/depend.make

# Include the progress variables for this target.
include src/filesys/CMakeFiles/filesys_t_mount.dir/progress.make

# Include the compile flags for this target's objects.
include src/filesys/CMakeFiles/filesys_t_mount.dir/flags.make

src/filesys/CMakeFiles/filesys_t_mount.dir/t_mount.c.o: src/filesys/CMakeFiles/filesys_t_mount.dir/flags.make
src/filesys/CMakeFiles/filesys_t_mount.dir/t_mount.c.o: ../src/filesys/t_mount.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/filesys/CMakeFiles/filesys_t_mount.dir/t_mount.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/filesys_t_mount.dir/t_mount.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/filesys/t_mount.c

src/filesys/CMakeFiles/filesys_t_mount.dir/t_mount.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/filesys_t_mount.dir/t_mount.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/filesys/t_mount.c > CMakeFiles/filesys_t_mount.dir/t_mount.c.i

src/filesys/CMakeFiles/filesys_t_mount.dir/t_mount.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/filesys_t_mount.dir/t_mount.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/filesys/t_mount.c -o CMakeFiles/filesys_t_mount.dir/t_mount.c.s

# Object files for target filesys_t_mount
filesys_t_mount_OBJECTS = \
"CMakeFiles/filesys_t_mount.dir/t_mount.c.o"

# External object files for target filesys_t_mount
filesys_t_mount_EXTERNAL_OBJECTS =

src/filesys/filesys_t_mount: src/filesys/CMakeFiles/filesys_t_mount.dir/t_mount.c.o
src/filesys/filesys_t_mount: src/filesys/CMakeFiles/filesys_t_mount.dir/build.make
src/filesys/filesys_t_mount: libtlpl_lib.so
src/filesys/filesys_t_mount: src/filesys/CMakeFiles/filesys_t_mount.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable filesys_t_mount"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filesys_t_mount.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/filesys/CMakeFiles/filesys_t_mount.dir/build: src/filesys/filesys_t_mount

.PHONY : src/filesys/CMakeFiles/filesys_t_mount.dir/build

src/filesys/CMakeFiles/filesys_t_mount.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys && $(CMAKE_COMMAND) -P CMakeFiles/filesys_t_mount.dir/cmake_clean.cmake
.PHONY : src/filesys/CMakeFiles/filesys_t_mount.dir/clean

src/filesys/CMakeFiles/filesys_t_mount.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/filesys /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys /media/wangbin/36005E93005E59C7/tlpl/build/src/filesys/CMakeFiles/filesys_t_mount.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/filesys/CMakeFiles/filesys_t_mount.dir/depend

