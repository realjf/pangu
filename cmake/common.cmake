option(BUILD_WITH_EASY_PROFILER "Enable EasyProfiler usage" ON)
option(BUILD_WITH_OPTICK "Enable Optick usage" OFF)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set(DEPS_SRC_FILES "")
set(DEPS_HEADER_FILES "")

if(WIN32)
    set(PYTHON_EXECUTABLE "python")
else()
    set(PYTHON_EXECUTABLE "python3")
endif()

find_package(Vulkan)

if(NOT Vulkan_FOUND)
    message(FATAL_ERROR "Vulkan not found")
endif()

if(WIN32)
    add_definitions(-D_CRT_SECURE_NO_WARNINGS)
endif()

set(ENABLE_HLSL OFF CACHE BOOL "")
set(ENABLE_CTEST OFF CACHE BOOL "")
set(ENABLE_OPT OFF CACHE BOOL "")


