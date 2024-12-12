add_executable(cmd main.c)

add_subdirectory(lib/minifb)

target_link_libraries(cmd
	PUBLIC
		longtail_static
		longtail_minifb
)

#
# COMPAT: Output to build/{win32,darwin,linux}_{x64,x32}/longtail/{debug,release}/longtail.* like the .bat build system.
#
set_target_properties(cmd PROPERTIES
	ARCHIVE_OUTPUT_DIRECTORY     "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail/$<LOWER_CASE:$<CONFIG>>"
	RUNTIME_OUTPUT_DIRECTORY     "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail/$<LOWER_CASE:$<CONFIG>>"
	LIBRARY_OUTPUT_DIRECTORY     "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail/$<LOWER_CASE:$<CONFIG>>"
	PDB_OUTPUT_DIRECTORY         "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail/$<LOWER_CASE:$<CONFIG>>"
	COMPILE_PDB_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/build/$<IF:$<PLATFORM_ID:Windows>,win32,$<LOWER_CASE:$<PLATFORM_ID>>>_$<IF:$<EQUAL:8,${CMAKE_SIZEOF_VOID_P}>,x64,x32>/longtail/$<LOWER_CASE:$<CONFIG>>"
	OUTPUT_NAME longtail
	PDB_NAME longtail
)

install(
	TARGETS cmd DESTINATION longtail$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
	FILES $<TARGET_PDB_FILE:cmd> DESTINATION longtail$<IF:$<CONFIG:Release>,,_$<LOWER_CASE:$<CONFIG>>>
)
