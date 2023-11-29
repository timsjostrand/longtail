add_library(longtail_platform)

find_package(Threads REQUIRED)

target_sources(longtail_platform
	PRIVATE
		"longtail_platform.c"
	PUBLIC
		"longtail_platform.h"
)

target_include_directories(longtail_platform
	PUBLIC
		"./"
)

# NOTE(TS): Workaround for the following warnings that are not strict C:
# * warning: implicit declaration of function 'ftruncate64'
# * error: use of undeclared identifier 'off64_t'
if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	set_source_files_properties(longtail_platform.c PROPERTIES LANGUAGE CXX)
endif()

target_link_libraries(longtail_platform
	PRIVATE
		Threads::Threads
)

add_subdirectory(archiveblockstore)
add_subdirectory(atomiccancel)
add_subdirectory(bikeshed)
add_subdirectory(blake2)
add_subdirectory(blake3)
add_subdirectory(blockstorestorage)
add_subdirectory(brotli)
add_subdirectory(cacheblockstore)
add_subdirectory(compressblockstore)
add_subdirectory(compressionregistry)
add_subdirectory(filestorage)
add_subdirectory(fsblockstore)
add_subdirectory(hashregistry)
add_subdirectory(hpcdcchunker)
add_subdirectory(lrublockstore)
add_subdirectory(lz4)
add_subdirectory(memstorage)
add_subdirectory(memtracer)
add_subdirectory(meowhash)
add_subdirectory(ratelimitedprogress)
add_subdirectory(shareblockstore)
add_subdirectory(zstd)
