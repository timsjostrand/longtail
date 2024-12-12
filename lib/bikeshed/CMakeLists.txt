add_library(longtail_bikeshed OBJECT)

target_sources(longtail_bikeshed
	PRIVATE
		"longtail_bikeshed.c"
		"ext/bikeshed.h"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_bikeshed.h"
)

target_include_directories(longtail_bikeshed
	PUBLIC
		"./"
)

install(TARGETS longtail_bikeshed FILE_SET public_headers)