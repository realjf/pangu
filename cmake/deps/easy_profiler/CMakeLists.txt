cmake_minimum_required(VERSION 3.12)

set(PROJECT_ROOT_PATH ../../)

# set library output path
set(LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/../../lib)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../../lib)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/../../bin)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${LIBRARY_OUTPUT_PATH})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${LIBRARY_OUTPUT_PATH})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${LIBRARY_OUTPUT_PATH})

set(EASY_PROFILER_NO_GUI ON CACHE BOOL "")
set(EASY_PROFILER_NO_SAMPLES ON CACHE BOOL "")

set(BUILD_SHARED_LIBS ON)
set(BUILD_STATIC_LIBS ON)

add_subdirectory(${CMAKE_BINARY_DIR}/../../deps/easy_sources ${CMAKE_BINARY_DIR}/build)

message("Enabled EasyProfiler")
add_definitions(-DBUILD_WITH_EASY_PROFILER=1)
add_definitions(-DCMAKE_BUILD_TYPE=Release)
include_directories(${PROJECT_ROOT_PATH}deps/easy_profiler/include)
set_property(TARGET easy_profiler PROPERTY FOLDER "ThirdPartyLibraries")
set_property(TARGET profiler_converter PROPERTY FOLDER "ThirdPartyLibraries")

file(COPY ${CMAKE_BINARY_DIR}/build/bin/libeasy_profiler.so DESTINATION ${LIBRARY_OUTPUT_PATH})
file(COPY ${CMAKE_BINARY_DIR}/build/bin/profiler_converter DESTINATION ${EXECUTABLE_OUTPUT_PATH})
