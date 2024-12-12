cmake_minimum_required(VERSION 3.24)

project(longtail VERSION 0.3.6)

option(BUILD_SHARED_LIBS "Build using shared libraries" OFF)

if(MSVC)
	set(CMAKE_C_FLAGS "/wd4244 /wd4316 /wd4996 /DLONGTAIL_LOG_LEVEL=5 /D__SSE2__")
	set(CMAKE_C_FLAGS_DEBUG "/DBIKESHED_ASSERTS /DLONGTAIL_ASSERTS /D_DEBUG /DLONGTAIL_LOG_LEVEL=3 /D__SSE2__ /DLONGTAIL_EXPORT_SYMBOLS /DZSTDLIB_VISIBILITY="" /DLZ4LIB_VISIBILITY="" /DSTBDS_REALLOC=Longtail_STBRealloc /DSTBDS_FREE=Longtail_STBFree")
else()
	set(CMAKE_C_FLAGS "-U_WIN32 -DLONGTAIL_LOG_LEVEL=5 -DZSTD_ADDRESS_SANITIZER=0")
	set(CMAKE_C_FLAGS_DEBUG "-DBIKESHED_ASSERTS -DLONGTAIL_LOG_LEVEL=3 -DLONGTAIL_ASSERTS -DSTBDS_REALLOC=Longtail_STBRealloc -DSTBDS_FREE=Longtail_STBFree -DZSTD_ADDRESS_SANITIZER=0")
endif()

add_subdirectory(src)
add_subdirectory(lib)
add_subdirectory(cmd)
add_subdirectory(static_lib)
add_subdirectory(shared_lib)
#add_subdirectory(perf) // NOTE(TS): does not compile
add_subdirectory(test)

