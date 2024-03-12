
function(AddAesSources target)
  target_sources(
    ${target} PRIVATE

    "${PROJECT_SOURCE_DIR}/C/Aes.c"
  )

  if(USE_C_AES OR "${PLATFORM}" MATCHES "^(arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/C/AesOpt.c"
    )
  elseif(NOT "${PLATFORM}" MATCHES "^(ia64|mips|arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/AesOpt.asm"
    )
  endif()
endfunction()

function(AddCrcSources target)
  target_sources(
    ${target} PRIVATE

    "${PROJECT_SOURCE_DIR}/C/7zCrc.c"
  )

  if("${PLATFORM}" MATCHES "^(ia64|mips|arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/C/7zCrcOpt.c"
    )
  else()
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/7zCrcOpt.asm"
    )
  endif()
endfunction()

function(AddCrc64Sources target)
  target_sources(
    ${target} PRIVATE

    "${PROJECT_SOURCE_DIR}/C/XzCrc64.c"
  )

  if("${PLATFORM}" MATCHES "^(ia64|mips|arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/C/XzCrc64Opt.c"
    )
  else()
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/XzCrc64Opt.asm"
    )
  endif()
endfunction()

function(AddLzFindOptSources target)
  if(USE_C_LZFINDOPT OR NOT "${PLATFORM}" MATCHES "^x64$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/C/LzFindOpt.c"
    )
  else()
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/LzFindOpt.asm"
    )
  endif()
endfunction()

function(AddLzmaDecSources target)
  if("${PLATFORM}" MATCHES "^x64$" AND NOT NO_ASM)
    target_compile_definitions(
      ${target} PRIVATE

      Z7_LZMA_DEC_OPT
    )

    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/LzmaDecOpt.asm"
    )
  endif()
endfunction()

function(AddSha1Sources target)
  target_sources(
    ${target} PRIVATE

    "${PROJECT_SOURCE_DIR}/C/Sha1.c"
    "${PROJECT_SOURCE_DIR}/CPP/Common/Sha1Prepare.cpp"
  )

  if(USE_C_SHA OR "${PLATFORM}" MATCHES "^(arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/C/Sha1Opt.c"
    )
  elseif(NOT "${PLATFORM}" MATCHES "^(ia64|mips|arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/Sha1Opt.asm"
    )
  endif()
endfunction()

function(AddSha256Sources target)
  target_sources(
    ${target} PRIVATE

    "${PROJECT_SOURCE_DIR}/C/Sha256.c"
    "${PROJECT_SOURCE_DIR}/CPP/Common/Sha256Prepare.cpp"
  )

  if(USE_C_SHA OR "${PLATFORM}" MATCHES "^(arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/C/Sha256Opt.c"
    )
  elseif(NOT "${PLATFORM}" MATCHES "^(ia64|mips|arm|arm64)$")
    target_sources(
      ${target} PRIVATE

      "${PROJECT_SOURCE_DIR}/Asm/x86/Sha256Opt.asm"
    )
  endif()
endfunction()

add_subdirectory(Bundles)
add_subdirectory(UI)
