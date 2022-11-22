add_library(longtail_cacheblockstore)

target_sources(longtail_cacheblockstore
	PRIVATE
		"longtail_cacheblockstore.c"
	PUBLIC
		"longtail_cacheblockstore.h"
)

target_include_directories(longtail_cacheblockstore
	PUBLIC
		"./"
)
