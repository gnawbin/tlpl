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
include CMakeFiles/become_daemon.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/become_daemon.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/become_daemon.dir/flags.make

CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.o: CMakeFiles/become_daemon.dir/flags.make
CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.o: ../src/daemons/become_daemon.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/daemons/become_daemon.c

CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/daemons/become_daemon.c > CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.i

CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/daemons/become_daemon.c -o CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.s

# Object files for target become_daemon
become_daemon_OBJECTS = \
"CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.o"

# External object files for target become_daemon
become_daemon_EXTERNAL_OBJECTS =

libbecome_daemon.so: CMakeFiles/become_daemon.dir/src/daemons/become_daemon.c.o
libbecome_daemon.so: CMakeFiles/become_daemon.dir/build.make
libbecome_daemon.so: CMakeFiles/become_daemon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libbecome_daemon.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/become_daemon.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/become_daemon.dir/build: libbecome_daemon.so

.PHONY : CMakeFiles/become_daemon.dir/build

CMakeFiles/become_daemon.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/become_daemon.dir/cmake_clean.cmake
.PHONY : CMakeFiles/become_daemon.dir/clean

CMakeFiles/become_daemon.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles/become_daemon.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/become_daemon.dir/depend
