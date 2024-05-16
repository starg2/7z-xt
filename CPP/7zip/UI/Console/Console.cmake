
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

  target_compile_definitions(
    ${target} PRIVATE
  
    Z7_DEVICE_FILE
  )  
endfunction()
