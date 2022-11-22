add_library(longtail_meowhash)

target_sources(longtail_meowhash
	PRIVATE
		"longtail_meowhash.c"
		"ext/meow_hash_x64_aesni.h"
	PUBLIC
		"longtail_meowhash.h"
)

if(CMAKE_CXX_COMPILER_ID MATCHES "Clang")
	target_compile_options(longtail_meowhash PRIVATE -maes -mssse3)
endif()

target_include_directories(longtail_meowhash
	PRIVATE
		"ext/"
	PUBLIC
		"./"
)
