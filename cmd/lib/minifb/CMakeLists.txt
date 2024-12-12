add_library(longtail_minifb OBJECT)

set(MINIFB_BUILD_EXAMPLES OFF CACHE BOOL "Build minifb example programs" FORCE)

add_subdirectory(ext/minifb EXCLUDE_FROM_ALL)

target_sources(longtail_minifb
	PRIVATE
		"longtail_minifb.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_minifb.h"
)

target_include_directories(longtail_minifb
	PUBLIC
		"./"
)

target_link_libraries(longtail_minifb
	minifb
)

install(TARGETS longtail_minifb FILE_SET public_headers)
