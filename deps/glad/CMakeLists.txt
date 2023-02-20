cmake_minimum_required(VERSION 3.12)

set(PROJECT_NAME glad)

set(GLAD_SOURCES src/glad.c)

if(WIN32)
    set(GLAD_SOURCES ${GLAD_SOURCES} ${GLAD_SRC_GLAD_SOURCESFILES})
endif()

include_directories(include)

add_library(${PROJECT_NAME} SHARED ${GLAD_SOURCES})
add_library(${PROJECT_NAME}static STATIC ${GLAD_SOURCES})
add_library(${PROJECT_NAME}::${PROJECT_NAME} ALIAS ${PROJECT_NAME})

set_property(TARGET ${PROJECT_NAME} PROPERTY FOLDER "ThirdPartyLibraries")

if(UNIX)
    # On unix-like platforms the library is almost always called libtinyxml
    set_target_properties(${PROJECT_NAME} ${PROJECT_NAME}static PROPERTIES OUTPUT_NAME ${PROJECT_NAME})
elseif(BUILD_SHARED_LIBS AND WIN32)
    # Creates tinyxml.dll when building shared library version
    set_target_properties(${PROJECT_NAME} PROPERTIES SUFFIX ".dll")
endif()
