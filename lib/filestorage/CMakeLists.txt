add_library(longtail_filestorage)

target_sources(longtail_filestorage
	PRIVATE
		"longtail_filestorage.c"
	PUBLIC
		"longtail_filestorage.h"
)

target_include_directories(longtail_filestorage
	PUBLIC
		"./"
)
