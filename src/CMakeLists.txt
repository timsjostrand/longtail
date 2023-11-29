add_library(longtail)
add_library(longtail::longtail ALIAS longtail)

target_sources(longtail
	PRIVATE
		"longtail.c"
		"ext/stb_ds.h"
		"ext/stb_ds.c"
	PUBLIC
		"longtail.h"
)

target_include_directories(longtail
	PUBLIC
		"./"
)

# NOTE(TS): Workaround for the following warnings that are not strict C:
# * warning: implicit declaration of function 'qsort_r' is invalid in C99
set_source_files_properties(longtail.c PROPERTIES LANGUAGE CXX)

target_link_libraries(longtail
	PUBLIC
		longtail_platform
		longtail_archiveblockstore
		longtail_atomiccancel
		longtail_bikeshed
		longtail_blake2
		longtail_blake3
		longtail_blockstorestorage
		longtail_brotli
		longtail_cacheblockstore
		longtail_compressblockstore
		longtail_compressionregistry
		longtail_filestorage
		longtail_fsblockstore
		longtail_hashregistry
		longtail_hpcdcchunker
		longtail_lrublockstore
		longtail_lz4
		longtail_memstorage
		longtail_memtracer
		longtail_meowhash
		longtail_ratelimitedprogress
		longtail_shareblockstore
		longtail_zstd
)		
