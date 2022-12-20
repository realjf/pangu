# file(GLOB_RECURSE IMGUI_SRC_FILES LIST_DIRECTORIES false RELATIVE ${PROJECT_SOURCE_DIR}/deps/imgui *.c??)
# file(GLOB_RECURSE IMGUI_HEADER_FILES LIST_DIRECTORIES false RELATIVE ${PROJECT_SOURCE_DIR}/deps/imgui *.h??)

# list(APPEND IMGUI_SRC_FILES
#     ${PROJECT_SOURCE_DIR}/deps/imgui/imgui.cpp
#     ${PROJECT_SOURCE_DIR}/deps/imgui/imgui_demo.cpp
#     ${PROJECT_SOURCE_DIR}/deps/imgui/imgui_draw.cpp
#     ${PROJECT_SOURCE_DIR}/deps/imgui/imgui_tables.cpp
#     ${PROJECT_SOURCE_DIR}/deps/imgui/imgui_widgets.cpp
# )
# list(APPEND IMGUI_HEADER_FILES
#     ${PROJECT_SOURCE_DIR}/deps/imgui/imgui.h
# )

# list(APPEND DEPS_SRC_FILES ${IMGUI_SRC_FILES})
# list(APPEND DEPS_HEADER_FILES ${IMGUI_HEADER_FILES})

if (WIN32)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -limm32 -lglu32 -lgdi32 -lshell32")
endif()
