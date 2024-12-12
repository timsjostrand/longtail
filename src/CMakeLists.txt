add_library(longtail OBJECT)

target_sources(longtail
	PRIVATE
		"longtail.c"
		"ext/stb_ds.h"
		"ext/stb_ds.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail.h"
)

# NOTE(TS): Workaround for the following warnings that are not strict C:
#
#           * warning: implicit declaration of function 'qsort_r' is invalid in C99
#
#set_source_files_properties(longtail.c PROPERTIES LANGUAGE CXX)

install(TARGETS longtail FILE_SET public_headers)
