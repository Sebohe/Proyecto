cmake_minimum_required(VERSION 2.8)
project(LCMNAO)

find_package(qibuild)

# Create a executable named LCMNAO
# with the source file: main.cpp
qi_create_bin(LCMNAO "main.cpp")

# Add a simple test:
enable_testing()
qi_create_test(test_LCMNAO "test.cpp")
