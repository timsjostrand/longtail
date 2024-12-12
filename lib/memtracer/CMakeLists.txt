add_library(longtail_memtracer OBJECT)

target_sources(longtail_memtracer
	PRIVATE
		"longtail_memtracer.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_memtracer.h"
)

target_include_directories(longtail_memtracer
	PUBLIC
		"./"
)

install(TARGETS longtail_memtracer FILE_SET public_headers)
