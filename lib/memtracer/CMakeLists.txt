add_library(longtail_memtracer)

target_sources(longtail_memtracer
	PRIVATE
		"longtail_memtracer.c"
	PUBLIC
		"longtail_memtracer.h"
)

target_include_directories(longtail_memtracer
	PUBLIC
		"./"
)
