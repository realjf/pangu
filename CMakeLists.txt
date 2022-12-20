cmake_minimum_required(VERSION 3.12)

set(PROJECT_NAME pangu)
set(PANGU_MAJOR_VERSION 0)
set(PANGU_MINOR_VERSION 0)
set(PANGU_MICRO_VERSION 1)
set(PANGU_VERSION "${PANGU_MAJOR_VERSION}.${PANGU_MINOR_VERSION}.${PANGU_MICRO_VERSION}")

project(${PROJECT_NAME} LANGUAGES C CXX VERSION ${PANGU_VERSION})

# set executable output path
SET(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)

# set library output path
SET(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)

include(cmake/common.cmake)
include(cmake/common_macros.cmake)
include(cmake/glfw.cmake)
include(cmake/glad.cmake)
include(cmake/glm.cmake)
include(cmake/imgui.cmake)


include_directories(deps)
include_directories(deps/GLFW/include)
include_directories(deps/glad/include)
include_directories(deps/GLM)
include_directories(deps/imgui)


# include_directories(deps/assimp/include)
# include_directories(deps/etc2comp/EtcLib/Etc)
# include_directories(deps/etc2comp/EtcLib/EtcCodec)
set(CMAKE_CXX_FLAGS "-Wno-volatile")

SETUP_APP(${PROJECT_NAME} ${PANGU_VERSION})

# target_link_directories(${PROJECT_NAME} ${LIBRARY_OUTPUT_PATH})
target_link_libraries(${PROJECT_NAME} glad glfw glm)

