
add_executable(
  Fm WIN32

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Lang.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/ListFileUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Random.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Clipboard.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/CommonDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileLink.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryGlobal.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryLock.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Menu.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ProcessUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ResourceString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/SystemInfo.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Shell.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Window.cpp"

  # WIN_CTRL
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/ComboBox.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/Dialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/ListView.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/PropertyPage.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/Window2.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MultiOutStream.cpp"

  # UI_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveExtractCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveOpenCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/Bench.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/CompressCall2.cpp"
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
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/WorkDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ZipRegistry.cpp"

  # EXPLORER
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/ContextMenu.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/MyMessages.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/RegistryContextMenu.cpp"

  # GUI
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/BenchmarkDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/CompressDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/ExtractDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/ExtractGUI.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/HashGUI.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/UpdateCallbackGUI.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/UpdateCallbackGUI2.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/UpdateGUI.cpp"

  resource.rc
)

AddArcSources(Fm)
AddFMSources(Fm)

# Renamed to avoid name collision
set_target_properties(
  Fm
  PROPERTIES
    OUTPUT_NAME 7zzFM
    PREFIX ""
    PDB_NAME "7zzFM.exe"
)

target_compile_definitions(
  Fm PRIVATE

  Z7_LARGE_PAGES
)

install(TARGETS Fm)
