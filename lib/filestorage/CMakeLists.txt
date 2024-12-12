add_library(longtail_filestorage OBJECT)

target_sources(longtail_filestorage
	PRIVATE
		"longtail_filestorage.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_filestorage.h"
)

target_include_directories(longtail_filestorage
	PUBLIC
		"./"
)

install(TARGETS longtail_filestorage FILE_SET public_headers)