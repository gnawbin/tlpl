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
include src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/depend.make

# Include the progress variables for this target.
include src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/progress.make

# Include the compile flags for this target's objects.
include src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/flags.make

src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.o: src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/flags.make
src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.o: ../src/procexec/fork_stdio_buf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/procexec/fork_stdio_buf.c

src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/procexec/fork_stdio_buf.c > CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.i

src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/procexec/fork_stdio_buf.c -o CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.s

# Object files for target procexec_fork_stdio_buf
procexec_fork_stdio_buf_OBJECTS = \
"CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.o"

# External object files for target procexec_fork_stdio_buf
procexec_fork_stdio_buf_EXTERNAL_OBJECTS =

src/procexec/procexec_fork_stdio_buf: src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/fork_stdio_buf.c.o
src/procexec/procexec_fork_stdio_buf: src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/build.make
src/procexec/procexec_fork_stdio_buf: libtlpl_lib.so
src/procexec/procexec_fork_stdio_buf: libprocexec_print_wait_status.so
src/procexec/procexec_fork_stdio_buf: libprocexec_system.so
src/procexec/procexec_fork_stdio_buf: libprocexec_execlp.so
src/procexec/procexec_fork_stdio_buf: src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable procexec_fork_stdio_buf"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/procexec_fork_stdio_buf.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/build: src/procexec/procexec_fork_stdio_buf

.PHONY : src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/build

src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec && $(CMAKE_COMMAND) -P CMakeFiles/procexec_fork_stdio_buf.dir/cmake_clean.cmake
.PHONY : src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/clean

src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/procexec /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec /media/wangbin/36005E93005E59C7/tlpl/build/src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/procexec/CMakeFiles/procexec_fork_stdio_buf.dir/depend

