add_library(longtail_hashregistry)

target_sources(longtail_hashregistry
	PRIVATE
		"longtail_hash_registry.c"
		"longtail_full_hash_registry.c"
		"longtail_blake3_hash_registry.c"
	PUBLIC
		"longtail_hash_registry.h"
		"longtail_full_hash_registry.h"
		"longtail_blake3_hash_registry.h"
)

target_include_directories(longtail_hashregistry
	PUBLIC
		"./"
)
