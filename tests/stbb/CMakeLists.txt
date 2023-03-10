
cmake_minimum_required(VERSION 3.12)

get_filename_component(PROJECT_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
string(REPLACE " " "_" PROJECT_NAME ${PROJECT_NAME})

project(${PROJECT_NAME} LANGUAGES C CXX)

file(GLOB_RECURSE SRC_FILES LIST_DIRECTORIES false RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.c??)
file(GLOB_RECURSE HEADER_FILES LIST_DIRECTORIES false RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.h??)

add_executable(${PROJECT_NAME} ${SRC_FILES} ${HEADER_FILES})

target_link_directories(${PROJECT_NAME} PUBLIC ${LIBRARY_OUTPUT_PATH})
target_link_libraries(${PROJECT_NAME} glad glfw glm_shared assimp EtcLib meshoptimizer easy_profiler OptickCore)

target_sources(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../../deps/etc2comp/EtcTool/EtcFile.cpp)
target_sources(${PROJECT_NAME} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/../../deps/etc2comp/EtcTool/EtcFileHeader.cpp)
