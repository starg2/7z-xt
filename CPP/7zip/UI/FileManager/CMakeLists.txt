
add_executable(
  FileManager WIN32

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/DynLimBuf.cpp"
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
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Clipboard.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/CommonDialog.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ErrorMsg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileLink.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryGlobal.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/MemoryLock.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Menu.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/ProcessUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariantConv.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
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
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/PropertyPage.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Control/Window2.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CreateCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilterCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/LimitedStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodProps.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/ProgressUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/PropId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamObjects.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/UniqBlocks.cpp"

  # UI_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveExtractCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ArchiveOpenCallback.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/CompressCall.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/DefaultName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/EnumDirItems.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/ExtractingFilePath.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/HashCalc.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/LoadCodecs.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/OpenArchive.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/PropIDUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/SetProperties.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Common/SortUtils.cpp"
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
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/HashGUI.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/GUI/UpdateCallbackGUI2.cpp"

  # COMPRESS
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyCoder.cpp"

  # AR_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/ItemNameUtils.cpp"

  # C
  "${PROJECT_SOURCE_DIR}/C/Alloc.c"
  "${PROJECT_SOURCE_DIR}/C/CpuArch.c"
  "${PROJECT_SOURCE_DIR}/C/Sort.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"

  resource.rc
)

function(AddFMSources target)
  target_sources(
    ${target} PRIVATE

    # FM
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/App.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/BrowseDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ClassDefs.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/EnumFormatEtc.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ExtractCallback.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FileFolderPluginOpen.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FilePlugins.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FM.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FoldersPage.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FormatUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FSFolder.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FSFolderCopy.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/HelpUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/LangUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/MenuPage.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/MyLoadMenu.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/OpenCallback.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/OptionsDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/Panel.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelCopy.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelCrc.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelDrag.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelFolderChange.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelItemOpen.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelItems.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelKey.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelListNotify.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelMenu.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelOperations.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelSelect.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelSort.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PanelSplitFile.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ProgramLocation.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PropertyName.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/RegistryAssociations.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/RegistryUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/RootFolder.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/SplitUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/StringUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/SysIconUtils.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/TextPairs.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/UpdateCallback100.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ViewSettings.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/AboutDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ComboDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/CopyDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/EditDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/EditPage.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/LangPage.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ListViewDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/MessagesDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/OverwriteDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/PasswordDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/ProgressDialog2.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/SettingsPage.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/SplitDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/SystemPage.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/VerCtrl.cpp"

    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/AltStreamsFolder.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/FSDrives.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/LinkDialog.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/FileManager/NetFolder.cpp"

    # WIN
    "${PROJECT_SOURCE_DIR}/CPP/Windows/FileSystem.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/Windows/Net.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/Windows/SecurityUtils.cpp"

    # C
    "${PROJECT_SOURCE_DIR}/C/DllSecur.c"
  
    # AGENT
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/Agent.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/AgentOut.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/AgentProxy.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/ArchiveFolder.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/ArchiveFolderOpen.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/ArchiveFolderOut.cpp"
    "${PROJECT_SOURCE_DIR}/CPP/7zip/UI/Agent/UpdateCallbackAgent.cpp"
  )

  target_compile_definitions(
    ${target} PRIVATE

    Z7_LANG
    Z7_LONG_PATH
    Z7_DEVICE_FILE
  )

  target_link_libraries(
    ${target}

    comctl32
    htmlhelp
    comdlg32
    mpr
    gdi32

    delayimp
  )

  target_link_options(
    ${target} PRIVATE

    /DELAYLOAD:mpr.dll
  )
endfunction()

AddFMSources(FileManager)

set_target_properties(
  FileManager
  PROPERTIES
    OUTPUT_NAME 7zFM
    PREFIX ""
    PDB_NAME "7zFM.exe"
)

target_compile_definitions(
  FileManager PRIVATE

  Z7_EXTERNAL_CODECS
)

install(TARGETS FileManager)
