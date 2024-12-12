add_library(longtail_concurrentchunkwrite OBJECT)

target_sources(longtail_concurrentchunkwrite
	PRIVATE
		"longtail_concurrentchunkwrite.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_concurrentchunkwrite.h"
)

target_include_directories(longtail_concurrentchunkwrite
	PUBLIC
		"./"
)

install(TARGETS longtail_concurrentchunkwrite FILE_SET public_headers)