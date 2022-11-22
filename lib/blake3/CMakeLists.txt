add_library(longtail_blake3)

target_sources(longtail_blake3
	PRIVATE
		"longtail_blake3.c"
		"ext/blake3.h"
		"ext/blake3_impl.h"
		"ext/blake3.c"
		"ext/blake3_avx2.c"
		"ext/blake3_avx512.c"
		"ext/blake3_dispatch.c"
		"ext/blake3_portable.c"
		"ext/blake3_sse2.c"
		"ext/blake3_sse41.c"
		"$<$<BOOL:UNIX>:ext/blake3_avx2_x86-64_unix.S>"
		"$<$<PLATFORM_ID:Windows>:ext/blake3_avx2_x86-64_windows_gnu.S>"
		"$<$<BOOL:MSVC>:ext/blake3_avx2_x86-64_windows_msvc.asm>"
		"$<$<BOOL:UNIX>:ext/blake3_avx512_x86-64_unix.S>"
		"$<$<PLATFORM_ID:Windows>:ext/blake3_avx512_x86-64_windows_gnu.S>"
		"$<$<BOOL:MSVC>:ext/blake3_avx512_x86-64_windows_msvc.asm>"
		"$<$<BOOL:UNIX>:ext/blake3_sse2_x86-64_unix.S>"
		"$<$<PLATFORM_ID:Windows>:ext/blake3_sse2_x86-64_windows_gnu.S>"
		"$<$<BOOL:MSVC>:ext/blake3_sse2_x86-64_windows_msvc.asm>"
		"$<$<BOOL:UNIX>:ext/blake3_sse41_x86-64_unix.S>"
		"$<$<PLATFORM_ID:Windows>:ext/blake3_sse41_x86-64_windows_gnu.S>"
		"$<$<BOOL:MSVC>:ext/blake3_sse41_x86-64_windows_msvc.asm>"
	PUBLIC
		"longtail_blake3.h"
)

if(CMAKE_CXX_COMPILER_ID MATCHES "MSVC")
	set_property(SOURCE "ext/blake3_avx2.c" PROPERTY ISPC_INSTRUCTION_SETS avx2-i32x4)
	set_property(SOURCE "ext/blake3_avx512.c" PROPERTY ISPC_INSTRUCTION_SETS avx512skx-i32x835)
else()
	#target_compile_options(longtail_blake3 PRIVATE -m64 -maes)
	set_source_files_properties("ext/blake3_sse2.c" PROPERTIES COMPILE_FLAGS "-msse2")
	set_source_files_properties("ext/blake3_sse41.c" PROPERTIES COMPILE_FLAGS "-msse4.1")
	set_source_files_properties("ext/blake3_avx2.c" PROPERTIES COMPILE_FLAGS "-mavx2")
	set_source_files_properties("ext/blake3_avx512.c" PROPERTIES COMPILE_FLAGS "-mavx512vl -mavx512f")
endif()

target_include_directories(longtail_blake3
	PRIVATE
		"ext/"
	PUBLIC
		"./"
)
