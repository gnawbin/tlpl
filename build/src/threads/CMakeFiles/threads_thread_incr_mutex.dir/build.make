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
include src/threads/CMakeFiles/threads_thread_incr_mutex.dir/depend.make

# Include the progress variables for this target.
include src/threads/CMakeFiles/threads_thread_incr_mutex.dir/progress.make

# Include the compile flags for this target's objects.
include src/threads/CMakeFiles/threads_thread_incr_mutex.dir/flags.make

src/threads/CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.o: src/threads/CMakeFiles/threads_thread_incr_mutex.dir/flags.make
src/threads/CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.o: ../src/threads/thread_incr_mutex.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/threads/CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/threads && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/threads/thread_incr_mutex.c

src/threads/CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/threads && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/threads/thread_incr_mutex.c > CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.i

src/threads/CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/threads && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/threads/thread_incr_mutex.c -o CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.s

# Object files for target threads_thread_incr_mutex
threads_thread_incr_mutex_OBJECTS = \
"CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.o"

# External object files for target threads_thread_incr_mutex
threads_thread_incr_mutex_EXTERNAL_OBJECTS =

src/threads/threads_thread_incr_mutex: src/threads/CMakeFiles/threads_thread_incr_mutex.dir/thread_incr_mutex.c.o
src/threads/threads_thread_incr_mutex: src/threads/CMakeFiles/threads_thread_incr_mutex.dir/build.make
src/threads/threads_thread_incr_mutex: libthreads_strerror.so
src/threads/threads_thread_incr_mutex: libtlpl_lib.so
src/threads/threads_thread_incr_mutex: src/threads/CMakeFiles/threads_thread_incr_mutex.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable threads_thread_incr_mutex"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/threads && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/threads_thread_incr_mutex.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/threads/CMakeFiles/threads_thread_incr_mutex.dir/build: src/threads/threads_thread_incr_mutex

.PHONY : src/threads/CMakeFiles/threads_thread_incr_mutex.dir/build

src/threads/CMakeFiles/threads_thread_incr_mutex.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/threads && $(CMAKE_COMMAND) -P CMakeFiles/threads_thread_incr_mutex.dir/cmake_clean.cmake
.PHONY : src/threads/CMakeFiles/threads_thread_incr_mutex.dir/clean

src/threads/CMakeFiles/threads_thread_incr_mutex.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/threads /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/threads /media/wangbin/36005E93005E59C7/tlpl/build/src/threads/CMakeFiles/threads_thread_incr_mutex.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/threads/CMakeFiles/threads_thread_incr_mutex.dir/depend

