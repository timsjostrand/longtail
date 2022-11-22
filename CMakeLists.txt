cmake_minimum_required(VERSION 3.20)

project(longtail VERSION 0.4.0 LANGUAGES C ASM CXX)

add_subdirectory(lib)
add_subdirectory(src)
add_subdirectory(cmd)
#add_subdirectory(perf) // NOTE(TS): does not compile
add_subdirectory(test)

