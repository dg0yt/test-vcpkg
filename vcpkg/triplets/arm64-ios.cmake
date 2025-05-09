set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)
set(VCPKG_CMAKE_SYSTEM_NAME iOS)
set(VCPKG_OSX_ARCHITECTURES arm64)

if(DEFINED ENV{DEPLOYMENT_TARGET})
  set(VCPKG_OSX_DEPLOYMENT_TARGET $ENV{DEPLOYMENT_TARGET})
else()
    message(FATAL_ERROR "DEPLOYMENT_TARGET not defined as env variable")
endif()

set(VCPKG_BUILD_TYPE release)
set(VCPKG_CXX_FLAGS "-fvisibility=hidden")
set(VCPKG_C_FLAGS "-fvisibility=hidden")

# libb2 build,  see 
# https://github.com/microsoft/vcpkg/issues/43326#issuecomment-2827154631
#set(VCPKG_MAKE_BUILD_TRIPLET "--host=aarch64-apple-darwin")