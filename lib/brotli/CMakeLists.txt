add_library(longtail_brotli OBJECT)

add_subdirectory(ext EXCLUDE_FROM_ALL)

target_sources(longtail_brotli
	PRIVATE
		"longtail_brotli.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_brotli.h"
)

target_include_directories(longtail_brotli
	PUBLIC
		"./"
)

target_link_libraries(longtail_brotli
	brotlienc
	brotlidec
)

install(TARGETS longtail_brotli FILE_SET public_headers)