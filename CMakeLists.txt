cmake_minimum_required (VERSION 2.6)

project(pwf2tools)

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

include_directories("sources")

# search for pkg-config and don't error out immediately
include (FindPkgConfig)
if (NOT PKG_CONFIG_FOUND)
    message ("pkg-config not found, continuing incase on Windows.")
    find_package(PNG REQUIRED)
    if(PNG_FOUND)
    	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lpng16 -lz")
    else()
    	message(FATAL_ERROR "Couldn't find libpng! libpng is required for pwf2tex.")
    endif()
else()
    # check for libpng using pkg-config if found.
    pkg_check_modules (LIBPNG libpng16 REQUIRED)
    if (NOT LIBPNG_FOUND)
        message(FATAL_ERROR "You don't have libpng dev libs installed!")
    else()
    	SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -lpng16 -lz")
    endif ()
endif ()

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin/")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib/")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/lib/")

include_directories (${CMAKE_CURRENT_SOURCE_DIR})

source_group("" FILES ${MAIN_SOURCES})
source_group("Legacy" FILES ${LEGACY_SOURCES})
source_group("Server" FILES ${SERVER_SOURCES})
source_group("socketlib" FILES ${EXTERNAL_SOURCES})

add_subdirectory(sources)
