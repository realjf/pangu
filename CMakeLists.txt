cmake_minimum_required(VERSION 3.12)

set(PROJECT_NAME pangu)
set(PANGU_MAJOR_VERSION 0)
set(PANGU_MINOR_VERSION 0)
set(PANGU_MICRO_VERSION 1)
set(PANGU_VERSION "${PANGU_MAJOR_VERSION}.${PANGU_MINOR_VERSION}.${PANGU_MICRO_VERSION}")

project(${PROJECT_NAME} LANGUAGES C CXX VERSION ${PANGU_VERSION})


option(BUILD_WITH_EASY_PROFILER "Enable EasyProfiler usage" ON)
option(BUILD_WITH_OPTICK "Enable Optick usage" OFF)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# set executable output path
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
# set library output path
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

if(WIN32)
	set(PYTHON_EXECUTABLE "python")
else()
	set(PYTHON_EXECUTABLE "python3")
endif()

find_package(Vulkan)
if (NOT Vulkan_FOUND)
    message( FATAL_ERROR "Vulkan not found" )
endif()

include(cmake/common_macros.cmake)
include(cmake/glfw.cmake)
include(cmake/glad.cmake)

include_directories(deps/GLFW/include)
include_directories(deps/GLFW/deps)


SETUP_APP(${PROJECT_NAME} ${PANGU_VERSION})

# target_link_directories(${PROJECT_NAME} ${LIBRARY_OUTPUT_PATH})
target_link_libraries(${PROJECT_NAME} glad glfw)

