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
CMAKE_SOURCE_DIR = /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff

# Include any dependencies generated for this target.
include CMakeFiles/onfacedetection.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/onfacedetection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/onfacedetection.dir/flags.make

CMakeFiles/onfacedetection.dir/main.cpp.o: CMakeFiles/onfacedetection.dir/flags.make
CMakeFiles/onfacedetection.dir/main.cpp.o: ../main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/onfacedetection.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/onfacedetection.dir/main.cpp.o -c /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/main.cpp

CMakeFiles/onfacedetection.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/onfacedetection.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/main.cpp > CMakeFiles/onfacedetection.dir/main.cpp.i

CMakeFiles/onfacedetection.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/onfacedetection.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/main.cpp -o CMakeFiles/onfacedetection.dir/main.cpp.s

CMakeFiles/onfacedetection.dir/main.cpp.o.requires:
.PHONY : CMakeFiles/onfacedetection.dir/main.cpp.o.requires

CMakeFiles/onfacedetection.dir/main.cpp.o.provides: CMakeFiles/onfacedetection.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/onfacedetection.dir/build.make CMakeFiles/onfacedetection.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/onfacedetection.dir/main.cpp.o.provides

CMakeFiles/onfacedetection.dir/main.cpp.o.provides.build: CMakeFiles/onfacedetection.dir/main.cpp.o

CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o: CMakeFiles/onfacedetection.dir/flags.make
CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o: ../onfacedetection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o -c /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/onfacedetection.cpp

CMakeFiles/onfacedetection.dir/onfacedetection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/onfacedetection.dir/onfacedetection.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/onfacedetection.cpp > CMakeFiles/onfacedetection.dir/onfacedetection.cpp.i

CMakeFiles/onfacedetection.dir/onfacedetection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/onfacedetection.dir/onfacedetection.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/onfacedetection.cpp -o CMakeFiles/onfacedetection.dir/onfacedetection.cpp.s

CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.requires:
.PHONY : CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.requires

CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.provides: CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.requires
	$(MAKE) -f CMakeFiles/onfacedetection.dir/build.make CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.provides.build
.PHONY : CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.provides

CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.provides.build: CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o

# Object files for target onfacedetection
onfacedetection_OBJECTS = \
"CMakeFiles/onfacedetection.dir/main.cpp.o" \
"CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o"

# External object files for target onfacedetection
onfacedetection_EXTERNAL_OBJECTS =

sdk/bin/onfacedetection: CMakeFiles/onfacedetection.dir/main.cpp.o
sdk/bin/onfacedetection: CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o
sdk/bin/onfacedetection: CMakeFiles/onfacedetection.dir/build.make
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalproxies.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalcommon.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalsoap.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/librttools.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalthread.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_signals-mt.a
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_program_options-mt.a
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalvalue.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libtinyxml.so
sdk/bin/onfacedetection: /usr/lib/x86_64-linux-gnu/librt.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libqi.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_filesystem-mt.a
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_thread-mt.a
sdk/bin/onfacedetection: /usr/lib/x86_64-linux-gnu/libpthread.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_system-mt.a
sdk/bin/onfacedetection: /usr/lib/x86_64-linux-gnu/libdl.so
sdk/bin/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalerror.so
sdk/bin/onfacedetection: CMakeFiles/onfacedetection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable sdk/bin/onfacedetection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/onfacedetection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/onfacedetection.dir/build: sdk/bin/onfacedetection
.PHONY : CMakeFiles/onfacedetection.dir/build

# Object files for target onfacedetection
onfacedetection_OBJECTS = \
"CMakeFiles/onfacedetection.dir/main.cpp.o" \
"CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o"

# External object files for target onfacedetection
onfacedetection_EXTERNAL_OBJECTS =

CMakeFiles/CMakeRelink.dir/onfacedetection: CMakeFiles/onfacedetection.dir/main.cpp.o
CMakeFiles/CMakeRelink.dir/onfacedetection: CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o
CMakeFiles/CMakeRelink.dir/onfacedetection: CMakeFiles/onfacedetection.dir/build.make
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalproxies.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalcommon.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalsoap.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/librttools.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalthread.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_signals-mt.a
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_program_options-mt.a
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalvalue.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libtinyxml.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /usr/lib/x86_64-linux-gnu/librt.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libqi.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_filesystem-mt.a
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_thread-mt.a
CMakeFiles/CMakeRelink.dir/onfacedetection: /usr/lib/x86_64-linux-gnu/libpthread.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libboost_system-mt.a
CMakeFiles/CMakeRelink.dir/onfacedetection: /usr/lib/x86_64-linux-gnu/libdl.so
CMakeFiles/CMakeRelink.dir/onfacedetection: /home/sebas/Documents/UCR/Estructuras/NAO/sources/naoqi-sdk-1.14.5-linux64/lib/libalerror.so
CMakeFiles/CMakeRelink.dir/onfacedetection: CMakeFiles/onfacedetection.dir/relink.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CMakeFiles/CMakeRelink.dir/onfacedetection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/onfacedetection.dir/relink.txt --verbose=$(VERBOSE)

# Rule to relink during preinstall.
CMakeFiles/onfacedetection.dir/preinstall: CMakeFiles/CMakeRelink.dir/onfacedetection
.PHONY : CMakeFiles/onfacedetection.dir/preinstall

CMakeFiles/onfacedetection.dir/requires: CMakeFiles/onfacedetection.dir/main.cpp.o.requires
CMakeFiles/onfacedetection.dir/requires: CMakeFiles/onfacedetection.dir/onfacedetection.cpp.o.requires
.PHONY : CMakeFiles/onfacedetection.dir/requires

CMakeFiles/onfacedetection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/onfacedetection.dir/cmake_clean.cmake
.PHONY : CMakeFiles/onfacedetection.dir/clean

CMakeFiles/onfacedetection.dir/depend:
	cd /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff /home/sebas/Documents/UCR/Estructuras/NAO/Proyecto/tests/onfacedetection/build-ff/CMakeFiles/onfacedetection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/onfacedetection.dir/depend

