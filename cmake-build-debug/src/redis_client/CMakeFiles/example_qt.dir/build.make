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
include src/redis_client/CMakeFiles/example_qt.dir/depend.make

# Include the progress variables for this target.
include src/redis_client/CMakeFiles/example_qt.dir/progress.make

# Include the compile flags for this target's objects.
include src/redis_client/CMakeFiles/example_qt.dir/flags.make

src/redis_client/CMakeFiles/example_qt.dir/example_qt.cpp.o: src/redis_client/CMakeFiles/example_qt.dir/flags.make
src/redis_client/CMakeFiles/example_qt.dir/example_qt.cpp.o: ../src/redis_client/example_qt.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/redis_client/CMakeFiles/example_qt.dir/example_qt.cpp.o"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/example_qt.dir/example_qt.cpp.o -c /media/wangbin/36005E93005E59C7/tlpl/src/redis_client/example_qt.cpp

src/redis_client/CMakeFiles/example_qt.dir/example_qt.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example_qt.dir/example_qt.cpp.i"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /media/wangbin/36005E93005E59C7/tlpl/src/redis_client/example_qt.cpp > CMakeFiles/example_qt.dir/example_qt.cpp.i

src/redis_client/CMakeFiles/example_qt.dir/example_qt.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example_qt.dir/example_qt.cpp.s"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /media/wangbin/36005E93005E59C7/tlpl/src/redis_client/example_qt.cpp -o CMakeFiles/example_qt.dir/example_qt.cpp.s

# Object files for target example_qt
example_qt_OBJECTS = \
"CMakeFiles/example_qt.dir/example_qt.cpp.o"

# External object files for target example_qt
example_qt_EXTERNAL_OBJECTS =

src/redis_client/example_qt: src/redis_client/CMakeFiles/example_qt.dir/example_qt.cpp.o
src/redis_client/example_qt: src/redis_client/CMakeFiles/example_qt.dir/build.make
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Quick.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Test.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Xml.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Sql.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Qml.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Network.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.9.5
src/redis_client/example_qt: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.9.5
src/redis_client/example_qt: src/redis_client/CMakeFiles/example_qt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example_qt"
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example_qt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/redis_client/CMakeFiles/example_qt.dir/build: src/redis_client/example_qt

.PHONY : src/redis_client/CMakeFiles/example_qt.dir/build

src/redis_client/CMakeFiles/example_qt.dir/clean:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client && $(CMAKE_COMMAND) -P CMakeFiles/example_qt.dir/cmake_clean.cmake
.PHONY : src/redis_client/CMakeFiles/example_qt.dir/clean

src/redis_client/CMakeFiles/example_qt.dir/depend:
	cd /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /media/wangbin/36005E93005E59C7/tlpl /media/wangbin/36005E93005E59C7/tlpl/src/redis_client /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client /media/wangbin/36005E93005E59C7/tlpl/cmake-build-debug/src/redis_client/CMakeFiles/example_qt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/redis_client/CMakeFiles/example_qt.dir/depend
