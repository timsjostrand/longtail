add_library(longtail_hashregistry OBJECT)

target_sources(longtail_hashregistry
	PRIVATE
		"longtail_hash_registry.c"
		"longtail_full_hash_registry.c"
		"longtail_blake3_hash_registry.c"
	PUBLIC
		FILE_SET public_headers
		TYPE HEADERS
		FILES
			"longtail_hash_registry.h"
			"longtail_full_hash_registry.h"
			"longtail_blake3_hash_registry.h"
)

target_include_directories(longtail_hashregistry
	PUBLIC
		"./"
)

target_link_libraries(longtail_hashregistry
	longtail_blake2
	longtail_blake3
	longtail_meowhash
)

install(TARGETS longtail_hashregistry FILE_SET public_headers)
