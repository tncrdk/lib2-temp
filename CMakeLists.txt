# lib_b/CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(lib_b VERSION 1.0.0 LANGUAGES CXX)

# Create the shared library
add_library(lib_b SHARED
    lib_b.cpp
    lib_b2.cpp
)

# Specify include directories for the library itself
target_include_directories(lib_b PUBLIC
    $<INSTALL_INTERFACE:include>
    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
)

# Install rules for the library
install(TARGETS lib_b
    EXPORT lib_b_targets
    LIBRARY DESTINATION lib
    ARCHIVE DESTINATION lib
    RUNTIME DESTINATION bin # For Windows DLLs
)

# Install headers
install(FILES
    lib_b.h
    lib_b2.h
    DESTINATION include
)

# Generate and install the package configuration file
# This is crucial for find_package to work correctly
install(EXPORT lib_b_targets
    FILE lib_bConfig.cmake
    NAMESPACE lib_b::
    DESTINATION lib/cmake/lib_b
)

# Create a package configuration file for find_package(lib_b)
set(lib_b_VERSION ${PROJECT_VERSION})
configure_file(${CMAKE_CURRENT_SOURCE_DIR}/lib_bConfig.cmake.in
    ${CMAKE_CURRENT_BINARY_DIR}/lib_bConfig.cmake @ONLY
)
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/lib_bConfig.cmake
    DESTINATION lib/cmake/lib_b
)
