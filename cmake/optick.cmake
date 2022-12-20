

if(BUILD_WITH_OPTICK)
    add_subdirectory(deps/optick)
endif()

if(BUILD_WITH_OPTICK)
    message("Enabled Optick")
    add_definitions(-DBUILD_WITH_OPTICK=1)
    set_property(TARGET OptickCore PROPERTY FOLDER "ThirdPartyLibraries")
endif()
