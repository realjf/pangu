set(EASY_PROFILER_NO_GUI ON CACHE BOOL "")
set(EASY_PROFILER_NO_SAMPLES ON CACHE BOOL "")

if(BUILD_WITH_EASY_PROFILER)
    message("Enabled EasyProfiler")
    add_definitions(-DBUILD_WITH_EASY_PROFILER=1)
    include_directories(deps/easy_profiler/include)
    set_property(TARGET easy_profiler PROPERTY FOLDER "ThirdPartyLibraries")
    set_property(TARGET profiler_converter PROPERTY FOLDER "ThirdPartyLibraries")
endif()

add_definitions(-DBUILD_WITH_EASY_PROFILER=1)

add_subdirectory(deps/easyprofiler)

target_link_libraries(${PROJECT_NAME} easy_profiler)
