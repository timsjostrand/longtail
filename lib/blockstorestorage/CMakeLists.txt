add_library(longtail_blockstorestorage)

target_sources(longtail_blockstorestorage
	PRIVATE
		"longtail_blockstorestorage.c"
	PUBLIC
		"longtail_blockstorestorage.h"
)

# NOTE(TS): Workaround for the following warnings that are not strict C:
# * warning: implicit declaration of function 'qsort_r' is invalid in C99
set_source_files_properties(longtail_blockstorestorage.c PROPERTIES LANGUAGE CXX)

target_include_directories(longtail_blockstorestorage
	PUBLIC
		"./"
)
