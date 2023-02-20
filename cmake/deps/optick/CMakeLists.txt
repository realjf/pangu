cmake_minimum_required(VERSION 3.12)

# set library output path
set(LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../lib)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../../lib)

set(BUILD_SHARED_LIBS ON)
set(BUILD_STATIC_LIBS ON)
add_subdirectory(${CMAKE_BINARY_DIR}/../../deps/optick ${BUILD_OUTPUT_PATH})

message("Enabled Optick")
add_definitions(-DBUILD_WITH_OPTICK=1)
set_property(TARGET OptickCore PROPERTY FOLDER "ThirdPartyLibraries")
