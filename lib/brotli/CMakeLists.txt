add_library(longtail_brotli OBJECT)

add_subdirectory(ext EXCLUDE_FROM_ALL)
set_property(TARGET brotlienc PROPERTY COMPILE_OPTIONS -w $<$<CXX_COMPILER_ID:MSVC>:/wd4334>)
set_property(TARGET brotlidec PROPERTY COMPILE_OPTIONS -w $<$<CXX_COMPILER_ID:MSVC>:/wd4334>)

target_sources(longtail_brotli
	PRIVATE
		"longtail_brotli.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_brotli.h"
)

target_include_directories(longtail_brotli
	PUBLIC
		"./"
)

target_link_libraries(longtail_brotli
	brotlienc
	brotlidec
)

install(TARGETS longtail_brotli FILE_SET public_headers)