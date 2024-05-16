
add_executable(
  Client7z

  Client7z.cpp

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringToInt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/DLL.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariantConv.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"

  resource.rc
)

set_target_properties(
  Client7z
  PROPERTIES
    OUTPUT_NAME 7zcl
    PREFIX ""
    PDB_NAME "7zcl.exe"
)

install(TARGETS Client7z)
