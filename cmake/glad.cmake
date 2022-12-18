set(GLAD_SOURCES ${PROJECT_SOURCE_DIR}/deps/GLFW/deps/glad_gl.c ${PROJECT_SOURCE_DIR}/deps/GLFW/deps/glad_vulkan.c)
if(WIN32)
	set(GLAD_SOURCES ${GLAD_SOURCES})
endif()

add_library(glad ${GLAD_SOURCES})
