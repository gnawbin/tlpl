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
include CMakeFiles/procexec_system.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/procexec_system.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/procexec_system.dir/flags.make

CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.o: CMakeFiles/procexec_system.dir/flags.make
CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.o: ../src/procexec/lib/system.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/procexec/lib/system.c

CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/procexec/lib/system.c > CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.i

CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/procexec/lib/system.c -o CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.s

# Object files for target procexec_system
procexec_system_OBJECTS = \
"CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.o"

# External object files for target procexec_system
procexec_system_EXTERNAL_OBJECTS =

libprocexec_system.so: CMakeFiles/procexec_system.dir/src/procexec/lib/system.c.o
libprocexec_system.so: CMakeFiles/procexec_system.dir/build.make
libprocexec_system.so: CMakeFiles/procexec_system.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library libprocexec_system.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/procexec_system.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/procexec_system.dir/build: libprocexec_system.so

.PHONY : CMakeFiles/procexec_system.dir/build

CMakeFiles/procexec_system.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/procexec_system.dir/cmake_clean.cmake
.PHONY : CMakeFiles/procexec_system.dir/clean

CMakeFiles/procexec_system.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles/procexec_system.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/procexec_system.dir/depend

