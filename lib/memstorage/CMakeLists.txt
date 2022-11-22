add_library(longtail_memstorage)

target_sources(longtail_memstorage
	PRIVATE
		"longtail_memstorage.c"
	PUBLIC
		"longtail_memstorage.h"
)

target_include_directories(longtail_memstorage
	PUBLIC
		"./"
)
