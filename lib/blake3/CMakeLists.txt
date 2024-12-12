add_library(longtail_blake3 OBJECT)

add_subdirectory(ext/c EXCLUDE_FROM_ALL)

target_sources(longtail_blake3
	PRIVATE
		"longtail_blake3.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_blake3.h"
)

target_include_directories(longtail_blake3
	PUBLIC
		"./"
)

target_link_libraries(longtail_blake3
	blake3
)

install(TARGETS longtail_blake3 FILE_SET public_headers)