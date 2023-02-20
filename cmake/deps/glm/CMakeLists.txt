cmake_minimum_required(VERSION 3.12)

# set library output path
set(LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../lib)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../../lib)

set(BUILD_SHARED_LIBS ON)
set(BUILD_STATIC_LIBS ON)
add_subdirectory(${CMAKE_BINARY_DIR}/../../deps/GLM ${CMAKE_BINARY_DIR}/build)

set_property(TARGET glm PROPERTY FOLDER "ThirdPartyLibraries")
