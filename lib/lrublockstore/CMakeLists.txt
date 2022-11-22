add_library(longtail_lrublockstore)

target_sources(longtail_lrublockstore
	PRIVATE
		"longtail_lrublockstore.c"
	PUBLIC
		"longtail_lrublockstore.h"
)

target_include_directories(longtail_lrublockstore
	PUBLIC
		"./"
)
