add_library(longtail_fsblockstore OBJECT)

target_sources(longtail_fsblockstore
	PRIVATE
		"longtail_fsblockstore.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_fsblockstore.h"
)

target_include_directories(longtail_fsblockstore
	PUBLIC
		"./"
)

install(TARGETS longtail_fsblockstore FILE_SET public_headers)
