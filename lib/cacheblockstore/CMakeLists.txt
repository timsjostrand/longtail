add_library(longtail_cacheblockstore OBJECT)

target_sources(longtail_cacheblockstore
	PRIVATE
		"longtail_cacheblockstore.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_cacheblockstore.h"
)

target_include_directories(longtail_cacheblockstore
	PUBLIC
		"./"
)

install(TARGETS longtail_cacheblockstore FILE_SET public_headers)