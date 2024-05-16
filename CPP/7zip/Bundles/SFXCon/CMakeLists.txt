
add_executable(
  SFXCon

  SfxCon.cpp

  # CONSOLE
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/ConsoleClose.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/ExtractCallbackConsole.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/List.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/MainAr.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/OpenCallbackConsole.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/PercentPrinter.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Console/UserInputUtils.cpp"

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdInStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdOutStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/UTFConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariantConv.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Synchronization.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/System.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CreateCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CWrappers.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/InBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilterCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/LimitedStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/OutBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/ProgressUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/PropId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamBinder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamObjects.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/VirtThread.cpp"

  # UI_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveExtractCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveOpenCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/DefaultName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/Extract.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ExtractingFilePath.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/LoadCodecs.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/OpenArchive.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/PropIDUtils.cpp"

  # AR
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/SplitHandler.cpp"

  # AR_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/CoderMixer2.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/ItemNameUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/MultiStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/OutStreamWithCRC.cpp"

  # 7Z
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zDecode.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zExtract.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zIn.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zRegister.cpp"

  # COMPRESS
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Bcj2Coder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Bcj2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BcjCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BcjRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BranchMisc.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BranchRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeltaFilter.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Decoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdRegister.cpp"

  # CRYPTO
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/7zAes.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/7zAesRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/MyAes.cpp"

  # C
  "${PROJECT_SOURCE_DIR}/C/7zStream.c"
  "${PROJECT_SOURCE_DIR}/C/Alloc.c"
  "${PROJECT_SOURCE_DIR}/C/Bcj2.c"
  "${PROJECT_SOURCE_DIR}/C/Bra.c"
  "${PROJECT_SOURCE_DIR}/C/Bra86.c"
  "${PROJECT_SOURCE_DIR}/C/BraIA64.c"
  "${PROJECT_SOURCE_DIR}/C/CpuArch.c"
  "${PROJECT_SOURCE_DIR}/C/Delta.c"
  "${PROJECT_SOURCE_DIR}/C/DllSecur.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma2Dec.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma2DecMt.c"
  "${PROJECT_SOURCE_DIR}/C/LzmaDec.c"
  "${PROJECT_SOURCE_DIR}/C/MtDec.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd7.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd7Dec.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"

  resource.rc
)

AddAesSources(SFXCon)
AddCrcSources(SFXCon)
AddLzmaDecSources(SFXCon)
AddSha256Sources(SFXCon)

set_target_properties(
  SFXCon
  PROPERTIES
    OUTPUT_NAME 7zCon
    PREFIX ""
    SUFFIX ".sfx"
    PDB_NAME "7zCon.sfx"
)

target_compile_definitions(
  SFXCon PRIVATE

  Z7_EXTRACT_ONLY
  Z7_NO_READ_FROM_CODER
  Z7_SFX
  Z7_NO_LONG_PATH
  Z7_NO_LARGE_PAGES
)

install(TARGETS SFXCon)
