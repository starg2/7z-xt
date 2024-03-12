
add_executable(
  Console

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/DynLimBuf.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/ListFileUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdInStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdOutStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringToInt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/UTFConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileLink.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileSystem.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryLock.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariantConv.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/System.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/SystemInfo.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CreateCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilterCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/LimitedStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodProps.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MultiOutStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/ProgressUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/PropId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamObjects.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/UniqBlocks.cpp"

  # AR_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/ItemNameUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/OutStreamWithCRC.cpp"

  # COMPRESS
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyCoder.cpp"

  # C
  "${PROJECT_SOURCE_DIR}/C/Alloc.c"
  "${PROJECT_SOURCE_DIR}/C/CpuArch.c"
  "${PROJECT_SOURCE_DIR}/C/Sort.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"

  resource.rc
)

function(AddConsoleSources target)
  target_sources(
    ${target} PRIVATE

    # CONSOLE
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/BenchCon.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/ConsoleClose.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/ExtractCallbackConsole.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/HashCon.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/List.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/Main.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/MainAr.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/OpenCallbackConsole.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/PercentPrinter.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/UpdateCallbackConsole.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/UserInputUtils.cpp"

    # UI_COMMON
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveCommandLine.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveExtractCallback.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveOpenCallback.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/Bench.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/DefaultName.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/EnumDirItems.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/Extract.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ExtractingFilePath.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/HashCalc.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/LoadCodecs.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/OpenArchive.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/PropIDUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/SetProperties.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/SortUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/TempFiles.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/Update.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/UpdateAction.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/UpdateCallback.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/UpdatePair.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/UpdateProduce.cpp"

    # C
    "${PROJECT_SOURCE_DIR}/C/DllSecur.c"
  )
endfunction()

AddConsoleSources(Console)

AddCrcSources(Console)

set_target_properties(
  Console
  PROPERTIES
    OUTPUT_NAME 7z
    PREFIX ""
    PDB_NAME "7z.exe"
)

target_compile_definitions(
  Console PRIVATE

  Z7_EXTERNAL_CODECS
)

install(TARGETS Console)
