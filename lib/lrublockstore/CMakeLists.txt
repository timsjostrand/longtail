add_library(longtail_lrublockstore OBJECT)

target_sources(longtail_lrublockstore
	PRIVATE
		"longtail_lrublockstore.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_lrublockstore.h"
)

target_include_directories(longtail_lrublockstore
	PUBLIC
		"./"
)

install(TARGETS longtail_lrublockstore FILE_SET public_headers)
