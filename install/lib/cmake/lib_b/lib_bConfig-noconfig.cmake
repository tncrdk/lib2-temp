#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "lib_b::lib_b" for configuration ""
set_property(TARGET lib_b::lib_b APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(lib_b::lib_b PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/liblib_b.so"
  IMPORTED_SONAME_NOCONFIG "liblib_b.so"
  )

list(APPEND _cmake_import_check_targets lib_b::lib_b )
list(APPEND _cmake_import_check_files_for_lib_b::lib_b "${_IMPORT_PREFIX}/lib/liblib_b.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
