
add_executable(
  LzmaCon

  LzmaAlone.cpp

  # COMPRESS
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaRegister.cpp"

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CrcReg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/LzFindPrepare.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringToInt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/System.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/SystemInfo.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CreateCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CWrappers.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilterCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodProps.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamObjects.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamUtils.cpp"

  # UI_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/Bench.cpp"

  # CONSOLE
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/ConsoleClose.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/BenchCon.cpp"

  # C
  "${PROJECT_SOURCE_DIR}/C/Alloc.c"
  "${PROJECT_SOURCE_DIR}/C/Bra86.c"
  "${PROJECT_SOURCE_DIR}/C/CpuArch.c"
  "${PROJECT_SOURCE_DIR}/C/LzFind.c"
  "${PROJECT_SOURCE_DIR}/C/LzFindMt.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma86Dec.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma86Enc.c"
  "${PROJECT_SOURCE_DIR}/C/LzmaDec.c"
  "${PROJECT_SOURCE_DIR}/C/LzmaEnc.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"

  resource.rc
)

AddCrcSources(LzmaCon)
AddLzFindOptSources(LzmaCon)
AddLzmaDecSources(LzmaCon)

set_target_properties(
  LzmaCon
  PROPERTIES
    OUTPUT_NAME lzma
    PREFIX ""
    PDB_NAME "lzma.exe"
)

install(TARGETS LzmaCon)
