add_library(longtail_atomiccancel OBJECT)

target_sources(longtail_atomiccancel
	PRIVATE
		"longtail_atomiccancel.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_atomiccancel.h"
)

target_include_directories(longtail_atomiccancel
	PUBLIC
		"./"
)

install(TARGETS longtail_atomiccancel FILE_SET public_headers)