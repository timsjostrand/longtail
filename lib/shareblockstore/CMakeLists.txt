add_library(longtail_shareblockstore OBJECT)

target_sources(longtail_shareblockstore
	PRIVATE
		"longtail_shareblockstore.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_shareblockstore.h"
)

target_include_directories(longtail_shareblockstore
	PUBLIC
		"./"
)

install(TARGETS longtail_shareblockstore FILE_SET public_headers)
