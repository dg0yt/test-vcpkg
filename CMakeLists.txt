cmake_minimum_required(VERSION 3.21)

#######################################

project(TestVcpkg LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(libb2 CONFIG REQUIRED)

add_executable(testvcpkg main.cpp)

if(CMAKE_SYSTEM_NAME STREQUAL "iOS")
  set_target_properties(
    testvcpkg
    PROPERTIES MACOSX_BUNDLE TRUE
               XCODE_ATTRIBUTE_CODE_SIGN_IDENTITY "" # disable signing
               MACOSX_BUNDLE_GUI_IDENTIFIER Testvcpkg.SDK
               XCODE_ATTRIBUTE_ENABLE_HARDENED_RUNTIME TRUE
  )
endif ()


target_link_libraries(testvcpkg PRIVATE libb2::libb2)
