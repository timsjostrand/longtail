add_library(longtail_memstorage OBJECT)

target_sources(longtail_memstorage
	PRIVATE
		"longtail_memstorage.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_memstorage.h"
)

target_include_directories(longtail_memstorage
	PUBLIC
		"./"
)

install(TARGETS longtail_memstorage FILE_SET public_headers)
