add_library(longtail_compressionregistry OBJECT)

target_sources(longtail_compressionregistry
	PRIVATE
		"longtail_compression_registry.c"
		"longtail_full_compression_registry.c"
		"longtail_zstd_compression_registry.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_compression_registry.h"
			"longtail_full_compression_registry.h"
			"longtail_zstd_compression_registry.h"
)

target_include_directories(longtail_compressionregistry
	PUBLIC
		"./"
)

target_link_libraries(longtail_compressionregistry
	longtail
	longtail_platform
	longtail_brotli
	longtail_lz4
	longtail_zstd
)

install(TARGETS longtail_compressionregistry FILE_SET public_headers)