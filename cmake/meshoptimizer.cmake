set(MESHOPT_BUILD_DEMO OFF CACHE BOOL "")
set(MESHOPT_BUILD_TOOLS OFF CACHE BOOL "")
set(MESHOPT_BUILD_SHARED_LIBS OFF CACHE BOOL "")

add_subdirectory(deps/meshoptimizer)

set_property(TARGET meshoptimizer PROPERTY FOLDER "ThirdPartyLibraries")
