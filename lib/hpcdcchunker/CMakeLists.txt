add_library(longtail_hpcdcchunker OBJECT)

target_sources(longtail_hpcdcchunker
	PRIVATE
		"longtail_hpcdcchunker.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_hpcdcchunker.h"
)

target_include_directories(longtail_hpcdcchunker
	PUBLIC
		"./"
)

install(TARGETS longtail_hpcdcchunker FILE_SET public_headers)
