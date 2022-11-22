add_library(longtail_atomiccancel)

target_sources(longtail_atomiccancel
	PRIVATE
		"longtail_atomiccancel.c"
	PUBLIC
		"longtail_atomiccancel.h"
)

target_include_directories(longtail_atomiccancel
	PUBLIC
		"./"
)
