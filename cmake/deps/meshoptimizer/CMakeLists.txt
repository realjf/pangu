cmake_minimum_required(VERSION 3.12)

# set library output path
set(LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../lib)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../../lib)

set(MESHOPT_BUILD_DEMO OFF CACHE BOOL "")
set(MESHOPT_BUILD_TOOLS OFF CACHE BOOL "")
set(MESHOPT_BUILD_SHARED_LIBS OFF CACHE BOOL "")

set(BUILD_SHARED_LIBS ON)

# set(BUILD_STATIC_LIBS ON)
add_subdirectory(${CMAKE_BINARY_DIR}/../../deps/meshoptimizer ${BUILD_OUTPUT_PATH})

set_property(TARGET meshoptimizer PROPERTY FOLDER "ThirdPartyLibraries")
