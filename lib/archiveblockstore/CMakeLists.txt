add_library(longtail_archiveblockstore OBJECT)

target_sources(longtail_archiveblockstore
	PRIVATE
		"longtail_archiveblockstore.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_archiveblockstore.h"
)

target_include_directories(longtail_archiveblockstore
	PUBLIC
		"./"
)

install(TARGETS longtail_archiveblockstore FILE_SET public_headers)