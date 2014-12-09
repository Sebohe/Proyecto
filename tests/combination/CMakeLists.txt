cmake_minimum_required(VERSION 2.8)
project(new)
find_package(qibuild)


option(SOURCELOCALIZATION_IS_REMOTE
	"module is compiled as a remote module (ON or OFF)"
	ON)

set(_srcs
	main.cpp
	sourcelocalization.cpp
	sourcelocalization.h
)
# Create a executable named new
# with the source file: main.cpp

if(SOURCELOCALIZATION_IS_REMOTE)
	add_definitions(" -DSOURCELOCALIZATION_IS_REMOTE ")
	qi_create_bin(new ${_srcs})
else()
	qi_create_lib(new SHARED ${_src} SUBFOLDER naoqi)
endif()

qi_use_lib(new ALCOMMON ALPROXIES)
