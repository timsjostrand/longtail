add_library(longtail_ratelimitedprogress OBJECT)

target_sources(longtail_ratelimitedprogress
	PRIVATE
		"longtail_ratelimitedprogress.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_ratelimitedprogress.h"
)

target_include_directories(longtail_ratelimitedprogress
	PUBLIC
		"./"
)

install(TARGETS longtail_ratelimitedprogress FILE_SET public_headers)
