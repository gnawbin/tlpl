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
include src/svsem/CMakeFiles/svsem_svsem_demo.dir/depend.make

# Include the progress variables for this target.
include src/svsem/CMakeFiles/svsem_svsem_demo.dir/progress.make

# Include the compile flags for this target's objects.
include src/svsem/CMakeFiles/svsem_svsem_demo.dir/flags.make

src/svsem/CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.o: src/svsem/CMakeFiles/svsem_svsem_demo.dir/flags.make
src/svsem/CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.o: ../src/svsem/svsem_demo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/svsem/CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/svsem/svsem_demo.c

src/svsem/CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/svsem/svsem_demo.c > CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.i

src/svsem/CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/svsem/svsem_demo.c -o CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.s

# Object files for target svsem_svsem_demo
svsem_svsem_demo_OBJECTS = \
"CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.o"

# External object files for target svsem_svsem_demo
svsem_svsem_demo_EXTERNAL_OBJECTS =

src/svsem/svsem_svsem_demo: src/svsem/CMakeFiles/svsem_svsem_demo.dir/svsem_demo.c.o
src/svsem/svsem_svsem_demo: src/svsem/CMakeFiles/svsem_svsem_demo.dir/build.make
src/svsem/svsem_svsem_demo: libtlpl_lib.so
src/svsem/svsem_svsem_demo: src/svsem/CMakeFiles/svsem_svsem_demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable svsem_svsem_demo"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/svsem_svsem_demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/svsem/CMakeFiles/svsem_svsem_demo.dir/build: src/svsem/svsem_svsem_demo

.PHONY : src/svsem/CMakeFiles/svsem_svsem_demo.dir/build

src/svsem/CMakeFiles/svsem_svsem_demo.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem && $(CMAKE_COMMAND) -P CMakeFiles/svsem_svsem_demo.dir/cmake_clean.cmake
.PHONY : src/svsem/CMakeFiles/svsem_svsem_demo.dir/clean

src/svsem/CMakeFiles/svsem_svsem_demo.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/svsem /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem /media/wangbin/36005E93005E59C7/tlpl/build/src/svsem/CMakeFiles/svsem_svsem_demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/svsem/CMakeFiles/svsem_svsem_demo.dir/depend

