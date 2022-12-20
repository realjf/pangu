set(EASY_PROFILER_NO_GUI ON CACHE BOOL "")
set(EASY_PROFILER_NO_SAMPLES ON CACHE BOOL "")


add_subdirectory(deps/easy_sources)

if(BUILD_WITH_EASY_PROFILER)
    message("Enabled EasyProfiler")
    add_definitions(-DBUILD_WITH_EASY_PROFILER=1)
    add_definitions(-DCMAKE_BUILD_TYPE=Release)
    include_directories(deps/easy_profiler/include)
    set_property(TARGET easy_profiler PROPERTY FOLDER "ThirdPartyLibraries")
    set_property(TARGET profiler_converter PROPERTY FOLDER "ThirdPartyLibraries")
endif()
