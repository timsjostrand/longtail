add_library(longtail_compressblockstore)

target_sources(longtail_compressblockstore
	PRIVATE
		"longtail_compressblockstore.c"
	PUBLIC
		"longtail_compressblockstore.h"
)

target_include_directories(longtail_compressblockstore
	PUBLIC
		"./"
)
