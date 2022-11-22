add_library(longtail_fsblockstore)

target_sources(longtail_fsblockstore
	PRIVATE
		"longtail_fsblockstore.c"
	PUBLIC
		"longtail_fsblockstore.h"
)

target_include_directories(longtail_fsblockstore
	PUBLIC
		"./"
)
