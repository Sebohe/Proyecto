# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/build-ff

# Include any dependencies generated for this target.
include CMakeFiles/ledsexample.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ledsexample.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ledsexample.dir/flags.make

CMakeFiles/ledsexample.dir/ledsexample.cpp.o: CMakeFiles/ledsexample.dir/flags.make
CMakeFiles/ledsexample.dir/ledsexample.cpp.o: ../ledsexample.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/build-ff/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/ledsexample.dir/ledsexample.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ledsexample.dir/ledsexample.cpp.o -c /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/ledsexample.cpp

CMakeFiles/ledsexample.dir/ledsexample.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ledsexample.dir/ledsexample.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/ledsexample.cpp > CMakeFiles/ledsexample.dir/ledsexample.cpp.i

CMakeFiles/ledsexample.dir/ledsexample.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ledsexample.dir/ledsexample.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/ledsexample.cpp -o CMakeFiles/ledsexample.dir/ledsexample.cpp.s

CMakeFiles/ledsexample.dir/ledsexample.cpp.o.requires:
.PHONY : CMakeFiles/ledsexample.dir/ledsexample.cpp.o.requires

CMakeFiles/ledsexample.dir/ledsexample.cpp.o.provides: CMakeFiles/ledsexample.dir/ledsexample.cpp.o.requires
	$(MAKE) -f CMakeFiles/ledsexample.dir/build.make CMakeFiles/ledsexample.dir/ledsexample.cpp.o.provides.build
.PHONY : CMakeFiles/ledsexample.dir/ledsexample.cpp.o.provides

CMakeFiles/ledsexample.dir/ledsexample.cpp.o.provides.build: CMakeFiles/ledsexample.dir/ledsexample.cpp.o

# Object files for target ledsexample
ledsexample_OBJECTS = \
"CMakeFiles/ledsexample.dir/ledsexample.cpp.o"

# External object files for target ledsexample
ledsexample_EXTERNAL_OBJECTS =

sdk/bin/ledsexample: CMakeFiles/ledsexample.dir/ledsexample.cpp.o
sdk/bin/ledsexample: CMakeFiles/ledsexample.dir/build.make
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalproxies.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalcommon.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalsoap.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/librttools.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalthread.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_signals-mt.a
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_program_options-mt.a
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalvalue.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libtinyxml.so
sdk/bin/ledsexample: /usr/lib/x86_64-linux-gnu/librt.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libqi.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_filesystem-mt.a
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_thread-mt.a
sdk/bin/ledsexample: /usr/lib/x86_64-linux-gnu/libpthread.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_system-mt.a
sdk/bin/ledsexample: /usr/lib/x86_64-linux-gnu/libdl.so
sdk/bin/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalerror.so
sdk/bin/ledsexample: CMakeFiles/ledsexample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sdk/bin/ledsexample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ledsexample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ledsexample.dir/build: sdk/bin/ledsexample
.PHONY : CMakeFiles/ledsexample.dir/build

# Object files for target ledsexample
ledsexample_OBJECTS = \
"CMakeFiles/ledsexample.dir/ledsexample.cpp.o"

# External object files for target ledsexample
ledsexample_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/ledsexample: CMakeFiles/ledsexample.dir/ledsexample.cpp.o
CMakeFiles/CMakeRelink.dir/ledsexample: CMakeFiles/ledsexample.dir/build.make
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalproxies.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalcommon.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalsoap.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/librttools.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalthread.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_signals-mt.a
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_program_options-mt.a
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalvalue.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libtinyxml.so
CMakeFiles/CMakeRelink.dir/ledsexample: /usr/lib/x86_64-linux-gnu/librt.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libqi.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_filesystem-mt.a
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_thread-mt.a
CMakeFiles/CMakeRelink.dir/ledsexample: /usr/lib/x86_64-linux-gnu/libpthread.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_system-mt.a
CMakeFiles/CMakeRelink.dir/ledsexample: /usr/lib/x86_64-linux-gnu/libdl.so
CMakeFiles/CMakeRelink.dir/ledsexample: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalerror.so
CMakeFiles/CMakeRelink.dir/ledsexample: CMakeFiles/ledsexample.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/ledsexample"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ledsexample.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/ledsexample.dir/preinstall: CMakeFiles/CMakeRelink.dir/ledsexample
.PHONY : CMakeFiles/ledsexample.dir/preinstall

CMakeFiles/ledsexample.dir/requires: CMakeFiles/ledsexample.dir/ledsexample.cpp.o.requires
.PHONY : CMakeFiles/ledsexample.dir/requires

CMakeFiles/ledsexample.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ledsexample.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ledsexample.dir/clean

CMakeFiles/ledsexample.dir/depend:
	cd /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/build-ff && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/build-ff /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/build-ff /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/leds/build-ff/CMakeFiles/ledsexample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ledsexample.dir/depend

