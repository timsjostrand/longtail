add_library(longtail_shareblockstore)

target_sources(longtail_shareblockstore
	PRIVATE
		"longtail_shareblockstore.c"
	PUBLIC
		"longtail_shareblockstore.h"
)

target_include_directories(longtail_shareblockstore
	PUBLIC
		"./"
)
