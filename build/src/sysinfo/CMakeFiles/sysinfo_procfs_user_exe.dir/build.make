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
include src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/depend.make

# Include the progress variables for this target.
include src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/progress.make

# Include the compile flags for this target's objects.
include src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/flags.make

src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.o: src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/flags.make
src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.o: ../src/sysinfo/procfs_user_exe.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.o   -c /media/wangbin/36005E93005E59C7/tlpl/src/sysinfo/procfs_user_exe.c

src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/sysinfo/procfs_user_exe.c > CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.i

src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/sysinfo/procfs_user_exe.c -o CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.s

# Object files for target sysinfo_procfs_user_exe
sysinfo_procfs_user_exe_OBJECTS = \
"CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.o"

# External object files for target sysinfo_procfs_user_exe
sysinfo_procfs_user_exe_EXTERNAL_OBJECTS =

src/sysinfo/sysinfo_procfs_user_exe: src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/procfs_user_exe.c.o
src/sysinfo/sysinfo_procfs_user_exe: src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/build.make
src/sysinfo/sysinfo_procfs_user_exe: libtlpl_lib.so
src/sysinfo/sysinfo_procfs_user_exe: src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable sysinfo_procfs_user_exe"
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysinfo_procfs_user_exe.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/build: src/sysinfo/sysinfo_procfs_user_exe

.PHONY : src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/build

src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo && $(CMAKE_COMMAND) -P CMakeFiles/sysinfo_procfs_user_exe.dir/cmake_clean.cmake
.PHONY : src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/clean

src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/sysinfo /media/wangbin/36005E93005E59C7/tlpl/build /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo /media/wangbin/36005E93005E59C7/tlpl/build/src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/sysinfo/CMakeFiles/sysinfo_procfs_user_exe.dir/depend
