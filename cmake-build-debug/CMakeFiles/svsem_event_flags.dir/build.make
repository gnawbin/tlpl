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
include CMakeFiles/svsem_event_flags.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/svsem_event_flags.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/svsem_event_flags.dir/flags.make

CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.o: CMakeFiles/svsem_event_flags.dir/flags.make
CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.o: ../src/svsem/lib/event_flags.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/svsem/lib/event_flags.c

CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/svsem/lib/event_flags.c > CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.i

CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/svsem/lib/event_flags.c -o CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.s

# Object files for target svsem_event_flags
svsem_event_flags_OBJECTS = \
"CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.o"

# External object files for target svsem_event_flags
svsem_event_flags_EXTERNAL_OBJECTS =

libsvsem_event_flags.so: CMakeFiles/svsem_event_flags.dir/src/svsem/lib/event_flags.c.o
libsvsem_event_flags.so: CMakeFiles/svsem_event_flags.dir/build.make
libsvsem_event_flags.so: CMakeFiles/svsem_event_flags.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libsvsem_event_flags.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/svsem_event_flags.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/svsem_event_flags.dir/build: libsvsem_event_flags.so

.PHONY : CMakeFiles/svsem_event_flags.dir/build

CMakeFiles/svsem_event_flags.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/svsem_event_flags.dir/cmake_clean.cmake
.PHONY : CMakeFiles/svsem_event_flags.dir/clean

CMakeFiles/svsem_event_flags.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles/svsem_event_flags.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/svsem_event_flags.dir/depend

