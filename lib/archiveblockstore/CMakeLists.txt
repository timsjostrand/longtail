add_library(longtail_archiveblockstore)

target_sources(longtail_archiveblockstore
	PRIVATE
		"longtail_archiveblockstore.c"
	PUBLIC
		"longtail_archiveblockstore.h"
)

target_include_directories(longtail_archiveblockstore
	PUBLIC
		"./"
)

target_link_libraries(longtail_archiveblockstore
	PUBLIC
		longtail_platform
)
