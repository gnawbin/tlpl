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
include src/files/CMakeFiles/t_utimes.dir/depend.make

# Include the progress variables for this target.
include src/files/CMakeFiles/t_utimes.dir/progress.make

# Include the compile flags for this target's objects.
include src/files/CMakeFiles/t_utimes.dir/flags.make

src/files/CMakeFiles/t_utimes.dir/t_utimes.c.o: src/files/CMakeFiles/t_utimes.dir/flags.make
src/files/CMakeFiles/t_utimes.dir/t_utimes.c.o: ../src/files/t_utimes.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/files/CMakeFiles/t_utimes.dir/t_utimes.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/t_utimes.dir/t_utimes.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/files/t_utimes.c

src/files/CMakeFiles/t_utimes.dir/t_utimes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/t_utimes.dir/t_utimes.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/files/t_utimes.c > CMakeFiles/t_utimes.dir/t_utimes.c.i

src/files/CMakeFiles/t_utimes.dir/t_utimes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/t_utimes.dir/t_utimes.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/files/t_utimes.c -o CMakeFiles/t_utimes.dir/t_utimes.c.s

# Object files for target t_utimes
t_utimes_OBJECTS = \
"CMakeFiles/t_utimes.dir/t_utimes.c.o"

# External object files for target t_utimes
t_utimes_EXTERNAL_OBJECTS =

src/files/t_utimes: src/files/CMakeFiles/t_utimes.dir/t_utimes.c.o
src/files/t_utimes: src/files/CMakeFiles/t_utimes.dir/build.make
src/files/t_utimes: libtlpl_lib.so
src/files/t_utimes: libfile_perms.so
src/files/t_utimes: src/files/CMakeFiles/t_utimes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable t_utimes"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/t_utimes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/files/CMakeFiles/t_utimes.dir/build: src/files/t_utimes

.PHONY : src/files/CMakeFiles/t_utimes.dir/build

src/files/CMakeFiles/t_utimes.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files && $(CMAKE_COMMAND) -P CMakeFiles/t_utimes.dir/cmake_clean.cmake
.PHONY : src/files/CMakeFiles/t_utimes.dir/clean

src/files/CMakeFiles/t_utimes.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/files /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/files/CMakeFiles/t_utimes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/files/CMakeFiles/t_utimes.dir/depend

