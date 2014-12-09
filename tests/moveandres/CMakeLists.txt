cmake_minimum_required(VERSION 2.8)
project(movehead)

find_package(qibuild)

# Create a executable named movehead
# with the source file: main.cpp
qi_create_bin(movehead "movehead.cpp")


qi_use_lib(movehead ALCOMMON)
