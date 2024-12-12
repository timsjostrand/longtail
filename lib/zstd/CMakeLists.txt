add_library(longtail_zstd OBJECT)

set(ZSTD_BUILD_PROGRAMS OFF CACHE BOOL "BUILD PROGRAMS" FORCE)
set(ZSTD_BUILD_CONTRIB OFF CACHE BOOL "BUILD CONTRIB" FORCE)
set(ZSTD_BUILD_TESTS OFF CACHE BOOL "BUILD TESTS" FORCE)
add_subdirectory(ext/build/cmake EXCLUDE_FROM_ALL)

target_sources(longtail_zstd
	PRIVATE
		"longtail_zstd.c"
	PUBLIC
		"longtail_zstd.h"
)

target_include_directories(longtail_zstd
	PUBLIC
		"./"
)

set_target_properties(longtail_zstd PROPERTIES
	PUBLIC_HEADER
		"longtail_zstd.h"
)

target_link_libraries(longtail_zstd
	libzstd_static
)