add_library(longtail_compressionregistry)

target_sources(longtail_compressionregistry
	PRIVATE
		"longtail_compression_registry.c"
		"longtail_full_compression_registry.c"
		"longtail_zstd_compression_registry.c"
	PUBLIC
		"longtail_compression_registry.h"
		"longtail_full_compression_registry.h"
		"longtail_zstd_compression_registry.h"
)

target_include_directories(longtail_compressionregistry
	PUBLIC
		"./"
)
