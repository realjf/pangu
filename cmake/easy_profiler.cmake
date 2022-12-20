set(EASY_PROFILER_NO_GUI ON CACHE BOOL "")
set(EASY_PROFILER_NO_SAMPLES ON CACHE BOOL "")


add_subdirectory(deps/easy_sources)

add_definitions(-DBUILD_WITH_EASY_PROFILER=1)
