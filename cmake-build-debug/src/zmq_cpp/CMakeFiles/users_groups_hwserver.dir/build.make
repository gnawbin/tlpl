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
include src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/depend.make

# Include the progress variables for this target.
include src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/progress.make

# Include the compile flags for this target's objects.
include src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/flags.make

src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.o: src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/flags.make
src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.o: ../src/zmq_cpp/hwserver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.o -c /media/wangbin/36005E93005E59C7/tlpl/src/zmq_cpp/hwserver.cpp

src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/zmq_cpp/hwserver.cpp > CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.i

src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/zmq_cpp/hwserver.cpp -o CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.s

# Object files for target users_groups_hwserver
users_groups_hwserver_OBJECTS = \
"CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.o"

# External object files for target users_groups_hwserver
users_groups_hwserver_EXTERNAL_OBJECTS =

src/zmq_cpp/users_groups_hwserver: src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/hwserver.cpp.o
src/zmq_cpp/users_groups_hwserver: src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/build.make
src/zmq_cpp/users_groups_hwserver: libtlpl_lib.so
src/zmq_cpp/users_groups_hwserver: libusers_groups_ugid_functions.so
src/zmq_cpp/users_groups_hwserver: src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable users_groups_hwserver"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/users_groups_hwserver.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/build: src/zmq_cpp/users_groups_hwserver

.PHONY : src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/build

src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp && $(CMAKE_COMMAND) -P CMakeFiles/users_groups_hwserver.dir/cmake_clean.cmake
.PHONY : src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/clean

src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/zmq_cpp /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/zmq_cpp/CMakeFiles/users_groups_hwserver.dir/depend

