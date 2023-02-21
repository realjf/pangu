cmake_minimum_required(VERSION 3.12)

set(PROJECT_ROOT_PATH ../)

set(PANGU_MAJOR_VERSION 0)
set(PANGU_MINOR_VERSION 0)
set(PANGU_MICRO_VERSION 1)
set(PANGU_VERSION "${PANGU_MAJOR_VERSION}.${PANGU_MINOR_VERSION}.${PANGU_MICRO_VERSION}")

# if(CMAKE_VERSION VERSION_GREATER 3.12)
# set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 11)
# endif()
if(POLICY CMP0054)
    cmake_policy(SET CMP0054 NEW)
endif()

# set executable output path
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../bin_test)

# set library output path
set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/../lib)

set(CMAKE_VERBOSE_MAKEFILE ON)

include(${PROJECT_ROOT_PATH}cmake/common.cmake)
include(${PROJECT_ROOT_PATH}cmake/common_macros.cmake)

# sdl
# include(${PROJECT_ROOT_PATH}cmake/findsdl.cmake)
include_directories(${PROJECT_ROOT_PATH})
include_directories(${PROJECT_ROOT_PATH}tests)
include_directories(${PROJECT_ROOT_PATH}include)
include_directories(${PROJECT_ROOT_PATH}deps)
include_directories(${PROJECT_ROOT_PATH}deps/GLFW/include)
include_directories(${PROJECT_ROOT_PATH}deps/glad/include)
include_directories(${PROJECT_ROOT_PATH}deps/GLM)
include_directories(${PROJECT_ROOT_PATH}deps/imgui)
include_directories(${PROJECT_ROOT_PATH}deps/easy_profiler/include)
include_directories(${PROJECT_ROOT_PATH}deps/optick/src)
include_directories(${PROJECT_ROOT_PATH}deps/assimp/include)
include_directories(${PROJECT_ROOT_PATH}deps/etc2comp/EtcLib/Etc)
include_directories(${PROJECT_ROOT_PATH}deps/etc2comp/EtcLib/EtcCodec)
include_directories(${PROJECT_ROOT_PATH}deps/taskflow)
include_directories(${PROJECT_ROOT_PATH}deps/meshoptimizer/src)

# include_directories(${SDL2_INCLUDE_DIR})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wno-volatile -g -O2")

# add_subdirectory(vertex)
# add_subdirectory(glmm)
# add_subdirectory(stbb)
# add_subdirectory(imguii)
# add_subdirectory(easyprofiler)
# add_subdirectory(optickk)
# add_subdirectory(assimpp)
# add_subdirectory(etc2compp)
# add_subdirectory(taskfloww)
add_subdirectory(meshopt)
