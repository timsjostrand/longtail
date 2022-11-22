add_library(longtail_hpcdcchunker)

target_sources(longtail_hpcdcchunker
	PRIVATE
		"longtail_hpcdcchunker.c"
	PUBLIC
		"longtail_hpcdcchunker.h"
)

target_include_directories(longtail_hpcdcchunker
	PUBLIC
		"./"
)
