
add_executable(
  Alone2

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/ListFileUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdInStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdOutStream.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileLink.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileSystem.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryLock.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/SystemInfo.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MultiOutStream.cpp"

  resource.rc
)

AddArcSources(Alone2)
AddConsoleSources(Alone2)

set_target_properties(
  Alone2
  PROPERTIES
    OUTPUT_NAME 7zz
    PREFIX ""
    PDB_NAME "7zz.exe"
)

target_compile_definitions(
  Alone2 PRIVATE

  Z7_PROG_VARIANT_Z
)

install(TARGETS Alone2)
