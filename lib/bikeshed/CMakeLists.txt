add_library(longtail_bikeshed)

target_sources(longtail_bikeshed
	PRIVATE
		"longtail_bikeshed.c"
		"ext/bikeshed.h"
	PUBLIC
		"longtail_bikeshed.h"
)

target_include_directories(longtail_bikeshed
	PUBLIC
		"./"
)
