add_library(longtail_shared SHARED shared_lib.c)

set_target_properties(longtail_shared PROPERTIES WINDOWS_EXPORT_ALL_SYMBOLS ON)

target_link_libraries(longtail_shared
	PUBLIC
		longtail
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
		longtail_concurrentchunkwrite
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

# COMPAT: Output to build/{win32,darwin,linux}_{x64,x32}/longtail_dylib/{debug,release}/longtail_dylib.* like the .bat build system.
set_target_properties(longtail_shared PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY     "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_dylib/$<LOWER_CASE:$<CONFIG>>"
	RUNTIME_OUTPUT_DIRECTORY     "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_dylib/$<LOWER_CASE:$<CONFIG>>"
	LIBRARY_OUTPUT_DIRECTORY     "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_dylib/$<LOWER_CASE:$<CONFIG>>"
	PDB_OUTPUT_DIRECTORY         "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_dylib/$<LOWER_CASE:$<CONFIG>>"
	COMPILE_PDB_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_dylib/$<LOWER_CASE:$<CONFIG>>"
	OUTPUT_NAME longtail_dylib
	PDB_NAME longtail_dylib
)

install(TARGETS longtail_shared
	#DESTINATION longtail_$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
	DESTINATION longtail_dylib$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
	FILES $<TARGET_PDB_FILE:longtail_shared> DESTINATION longtail_dylib$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
)
