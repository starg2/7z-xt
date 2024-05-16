
add_library(
  Format7zF SHARED

  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Archive2.def"

  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/ArchiveExports.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/DllExports2.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CodecExports.cpp"

  resource.rc
)

AddArcSources(Format7zF)

set_target_properties(
  Format7zF
  PROPERTIES
    OUTPUT_NAME 7z
    PREFIX ""
    PDB_NAME "7z.dll"
)

target_compile_definitions(
  Format7zF PRIVATE

  Z7_EXTERNAL_CODECS
)

install(TARGETS Format7zF)
