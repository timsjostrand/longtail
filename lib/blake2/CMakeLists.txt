add_library(longtail_blake2)

target_sources(longtail_blake2
	PRIVATE
		"longtail_blake2.c"
		"ext/blake2-config.h"
		"ext/blake2-impl.h"
		"ext/blake2.h"
		"ext/blake2s-load-sse2.h"
		"ext/blake2s-load-sse41.h"
		"ext/blake2s-round.h"
		"ext/blake2s.c"
	PUBLIC
		"longtail_blake2.h"
)

target_include_directories(longtail_blake2
	PRIVATE
		"ext/"
	PUBLIC
		"./"
)

if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
	target_compile_options(longtail_blake2 PRIVATE /arch:AVX2)
else()
	set_source_files_properties("ext/blake2s-load-sse2.h" PROPERTIES COMPILE_FLAGS "-msse2")
	set_source_files_properties("ext/blake2s-load-sse41.h" PROPERTIES COMPILE_FLAGS "-msse4.1")
endif()