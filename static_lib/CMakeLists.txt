add_library(longtail_static STATIC)

target_link_libraries(longtail_static
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

target_compile_options(
	longtail_static
	PRIVATE 
		$<$<AND:$<CXX_COMPILER_ID:MSVC>,$<CONFIG:RELEASE>>:/Zi>
)

#
# COMPAT: Output to build/{win32,darwin,linux}_{x64,x32}/longtail_static/{debug,release}/longtail_static.* like the .bat build system.
#
set_target_properties(longtail_static PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY     ${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_static/$<LOWER_CASE:$<CONFIG>>
	RUNTIME_OUTPUT_DIRECTORY     ${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_static/$<LOWER_CASE:$<CONFIG>>
	LIBRARY_OUTPUT_DIRECTORY     ${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_static/$<LOWER_CASE:$<CONFIG>>
	PDB_OUTPUT_DIRECTORY         ${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_static/$<LOWER_CASE:$<CONFIG>>
	COMPILE_PDB_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail_static/$<LOWER_CASE:$<CONFIG>>
	OUTPUT_NAME                  longtail_static
	PDB_NAME                     longtail_static
)

install(
	TARGETS longtail_static                    DESTINATION longtail_static$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
	FILES   $<TARGET_PDB_FILE:longtail_static> DESTINATION longtail_static$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
)