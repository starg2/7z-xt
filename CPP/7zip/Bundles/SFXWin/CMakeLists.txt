
add_executable(
  SFXWin WIN32

  SFXWin.cpp

  # GUI
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/ExtractDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/ExtractGUI.cpp"

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Clipboard.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/CommonDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryGlobal.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariantConv.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ResourceString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Shell.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Synchronization.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/System.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Window.cpp"

  # WIN_CTRL
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/ComboBox.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/Dialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/ListView.cpp"

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

  # EXPLORER
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/MyMessages.cpp"

  # FM
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/BrowseDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ComboDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ExtractCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FormatUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/OverwriteDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PasswordDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ProgressDialog2.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PropertyName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/SysIconUtils.cpp"

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

AddAesSources(SFXWin)
AddCrcSources(SFXWin)
AddLzmaDecSources(SFXWin)
AddSha256Sources(SFXWin)

set_target_properties(
  SFXWin
  PROPERTIES
    OUTPUT_NAME 7z
    PREFIX ""
    SUFFIX ".sfx"
    PDB_NAME "7z.sfx"
)

target_compile_definitions(
  SFXWin PRIVATE

  Z7_NO_REGISTRY
  Z7_EXTRACT_ONLY
  Z7_NO_READ_FROM_CODER
  Z7_SFX
  Z7_NO_LONG_PATH
  Z7_NO_LARGE_PAGES
)

target_link_libraries(
  SFXWin

  comctl32
  comdlg32
)

install(TARGETS SFXWin)
