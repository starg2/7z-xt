
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
