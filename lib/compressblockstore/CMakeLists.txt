add_library(longtail_compressblockstore OBJECT)

target_sources(longtail_compressblockstore
	PRIVATE
		"longtail_compressblockstore.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_compressblockstore.h"
)

target_include_directories(longtail_compressblockstore
	PUBLIC
		"./"
)

install(TARGETS longtail_compressblockstore FILE_SET public_headers)