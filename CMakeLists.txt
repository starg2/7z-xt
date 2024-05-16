
cmake_minimum_required(VERSION 3.21)

cmake_policy(SET CMP0091 NEW)   # MSVC runtime library flags are selected by an abstraction.
cmake_policy(SET CMP0092 NEW)   # Don't add /W3 flag in CMAKE_C_FLAGS by default.

project(7z-xt LANGUAGES C CXX ASM_MASM)

# ====

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/out/bin" CACHE PATH "Where to put all the RUNTIME target files when built.")
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/out/lib" CACHE PATH "Where to put all the ARCHIVE target files when built.")
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/out/lib" CACHE PATH "Where to put all the LIBRARY target files when built.")

# ====

set(PLATFORM "$ENV{Platform}" CACHE STRING "Target platform")
set_property(CACHE PLATFORM PROPERTY STRINGS "x86" "x64" "arm" "arm64")

set(NO_ASM OFF CACHE BOOL "Don't use ASM implementation of LzmaDec")
set(NO_ASM_GNU OFF CACHE BOOL "Don't use ASM implementation of LzmaDec on arm64")
set(USE_C_AES OFF CACHE BOOL "Use C AES implementation")
set(USE_C_CRC OFF CACHE BOOL "Use C CRC implementation")
set(USE_C_CRC64 OFF CACHE BOOL "Use C CRC64 implementation")
set(USE_C_LZFINDOPT OFF CACHE BOOL "Use C LzFindOpt implementation")
set(USE_C_SHA OFF CACHE BOOL "Use C SHA implementation")
set(USE_NO_ASM OFF CACHE BOOL "Don't use ASM implementation of CRC/CRC64")

# ===
# CRT

set(CRT_LINKAGE "STATIC" CACHE STRING "CRT linkage.")
set_property(CACHE CRT_LINKAGE PROPERTY STRINGS "SHARED" "STATIC" "HYBRID")

if(MSVC)
  if("${CRT_LINKAGE}" MATCHES "STATIC|HYBRID")
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreaded$<$<CONFIG:Debug>:Debug>")
  endif()

  if("${CRT_LINKAGE}" STREQUAL "HYBRID")
    add_link_options(
      /NODEFAULTLIB:libucrt$<$<CONFIG:Debug>:d>.lib
      /DEFAULTLIB:ucrt$<$<CONFIG:Debug>:d>.lib
    )
  endif()
else()
  # On MinGW, MSVCRT or UCRT is always dynamically linked, so STATIC is actually equivalent to HYBRID anyway.
  if("${CRT_LINKAGE}" MATCHES "STATIC|HYBRID")
    add_link_options(
      -static
    )
  endif()
endif()

# ===

if(WIN32)
  if(MSVC)
    add_compile_options(
      $<$<COMPILE_LANGUAGE:C,CXX>:-W4>
      $<$<COMPILE_LANGUAGE:C,CXX>:-WX>
      $<$<COMPILE_LANGUAGE:C,CXX>:-EHsc>
      $<$<COMPILE_LANGUAGE:C,CXX>:-Gy>
      $<$<COMPILE_LANGUAGE:C,CXX>:-GR->
      $<$<COMPILE_LANGUAGE:C,CXX>:-GF>
      $<$<COMPILE_LANGUAGE:C,CXX>:-GS->
      $<$<COMPILE_LANGUAGE:C,CXX>:-Zc:wchar_t>
      $<$<COMPILE_LANGUAGE:C,CXX>:-Zc:throwingNew>
      $<$<AND:$<COMPILE_LANGUAGE:C,CXX>,$<CONFIG:Release>>:-GL>
    )

    add_link_options(
      -MANIFEST:NO
      -LARGEADDRESSAWARE
      $<$<CONFIG:Release>:-OPT:REF>
      $<$<CONFIG:Release>:-OPT:ICF>
      $<$<CONFIG:Release>:-INCREMENTAL:NO>
      $<$<CONFIG:Release>:-LTCG>
    )

    if(NOT "${PLATFORM}" MATCHES "^(arm|arm64)$")
      add_compile_options(
        $<$<COMPILE_LANGUAGE:C,CXX>:-Gr>
      )
    endif()
  else()
    add_compile_options(
      -Wall
      -Wextra
      -Wfatal-errors
    )

    add_link_options(
      -Wl,--large-address-aware
    )
  endif()

  add_compile_definitions(
    UNICODE
    _UNICODE
  )

  link_libraries(
    oleaut32
    ole32
    user32
    advapi32
    shell32
  )
endif()

# ===

add_subdirectory(CPP/7zip)
