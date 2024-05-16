
add_library(
  Explorer SHARED

  Explorer.def

  # EXPLORER
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/DllExportsExplorer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/ContextMenu.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Explorer/MyMessages.cpp"

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Lang.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Random.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringToInt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/UTFConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryLock.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Menu.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ProcessUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ResourceString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Shell.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Synchronization.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Window.cpp"

  # WIN_CTRL
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/Dialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/ListView.cpp"

  # UI_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/CompressCall.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ExtractingFilePath.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ZipRegistry.cpp"

  # FM
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FormatUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/HelpUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/LangUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ProgramLocation.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PropertyName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/RegistryUtils.cpp"

  # C
  "${PROJECT_SOURCE_DIR}/C/CpuArch.c"
  "${PROJECT_SOURCE_DIR}/C/Sort.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"

  resource.rc
)

set_target_properties(
  Explorer
  PROPERTIES
    OUTPUT_NAME "7-zip"
    PREFIX ""
    PDB_NAME "7-zip.dll"
)

target_compile_definitions(
  Explorer PRIVATE

  Z7_LANG
)

target_link_libraries(
  Explorer

  htmlhelp
  comdlg32
  mpr
  gdi32
)

install(TARGETS Explorer)
