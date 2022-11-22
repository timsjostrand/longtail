add_library(longtail_lz4)

target_sources(longtail_lz4
	PRIVATE
		"longtail_lz4.c"

		"ext/lz4.c"
		"ext/lz4.h"
		"ext/lz4frame.c"
		"ext/lz4frame.h"
		"ext/lz4frame_static.h"
		"ext/lz4hc.c"
		"ext/lz4hc.h"
		"ext/xxhash.c"
		"ext/xxhash.h"
	PUBLIC
		"longtail_lz4.h"
)

target_include_directories(longtail_lz4
	PRIVATE
		"ext/"
	PUBLIC
		"./"
)
