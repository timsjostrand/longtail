add_library(longtail_ratelimitedprogress)

target_sources(longtail_ratelimitedprogress
	PRIVATE
		"longtail_ratelimitedprogress.c"
	PUBLIC
		"longtail_ratelimitedprogress.h"
)

target_include_directories(longtail_ratelimitedprogress
	PUBLIC
		"./"
)
