# lib_b/lib_bConfig.cmake.in
# This file is generated during installation and helps find_package(lib_b) locate the library.

# Provide the installed targets
include("${CMAKE_CURRENT_LIST_DIR}/lib_b_targets.cmake")

# Set the public include directories for consumers of lib_b
set(lib_b_INCLUDE_DIRS "${CMAKE_INSTALL_PREFIX}/include")

# Define variables that indicate the library was found
set(lib_b_FOUND TRUE)
