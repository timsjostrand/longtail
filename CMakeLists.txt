cmake_minimum_required(VERSION 3.24)

project(longtail VERSION 0.3.6)

option(BUILD_SHARED_LIBS "Build using shared libraries" OFF)

add_subdirectory(src)
add_subdirectory(lib)
add_subdirectory(cmd)
add_subdirectory(static_lib)
add_subdirectory(shared_lib)
#add_subdirectory(perf) // NOTE(TS): does not compile
add_subdirectory(test)

