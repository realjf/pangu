set(GLAD_SOURCES ${PROJECT_SOURCE_DIR}/deps/glad/src/glad.c ${PROJECT_SOURCE_DIR}/deps/glad/include/glad/glad.h)
if(WIN32)
	set(GLAD_SOURCES ${GLAD_SRC_GLAD_SOURCESFILES})
endif()

add_library(glad ${GLAD_SOURCES})

set_property(TARGET glad PROPERTY FOLDER "ThirdPartyLibraries")
