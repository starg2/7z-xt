
add_library(
  Format7z SHARED

  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Archive2.def"

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CrcReg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/LzFindPrepare.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Sha256Reg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringToInt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"

  # WIN
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileDir.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileFind.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileIO.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/FileName.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariant.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Synchronization.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/System.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CreateCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CWrappers.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/InBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/InOutTempBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilterCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/LimitedStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodProps.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/OutBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/ProgressUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/PropId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamBinder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamObjects.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/UniqBlocks.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/VirtThread.cpp"

  # AR
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/ArchiveExports.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/DllExports2.cpp"

  # AR_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/CoderMixer2.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/HandlerOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/InStreamWithCRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/ItemNameUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/OutStreamWithCRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/ParseProperties.cpp"

  # 7Z
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zCompressionMode.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zDecode.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zEncode.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zExtract.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zFolderInStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zHandlerOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zHeader.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zIn.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zProperties.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zSpecStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zUpdate.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/7z/7zRegister.cpp"

  # COMPRESS
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CodecExports.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Bcj2Coder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Bcj2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BcjCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BcjRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BitlDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BranchMisc.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BranchRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/ByteSwap.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BZip2Crc.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BZip2Decoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BZip2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeflateDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeflateRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeltaFilter.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Decoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Encoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzOutWindow.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdRegister.cpp"

  # CRYPTO
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/7zAes.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/7zAesRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/MyAes.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/MyAesReg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/RandGen.cpp"

  # C
  "${PROJECT_SOURCE_DIR}/C/7zStream.c"
  "${PROJECT_SOURCE_DIR}/C/Alloc.c"
  "${PROJECT_SOURCE_DIR}/C/Bcj2.c"
  "${PROJECT_SOURCE_DIR}/C/Bcj2Enc.c"
  "${PROJECT_SOURCE_DIR}/C/Bra.c"
  "${PROJECT_SOURCE_DIR}/C/Bra86.c"
  "${PROJECT_SOURCE_DIR}/C/BraIA64.c"
  "${PROJECT_SOURCE_DIR}/C/BwtSort.c"
  "${PROJECT_SOURCE_DIR}/C/CpuArch.c"
  "${PROJECT_SOURCE_DIR}/C/Delta.c"
  "${PROJECT_SOURCE_DIR}/C/HuffEnc.c"
  "${PROJECT_SOURCE_DIR}/C/LzFind.c"
  "${PROJECT_SOURCE_DIR}/C/LzFindMt.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma2Dec.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma2DecMt.c"
  "${PROJECT_SOURCE_DIR}/C/Lzma2Enc.c"
  "${PROJECT_SOURCE_DIR}/C/LzmaDec.c"
  "${PROJECT_SOURCE_DIR}/C/LzmaEnc.c"
  "${PROJECT_SOURCE_DIR}/C/MtCoder.c"
  "${PROJECT_SOURCE_DIR}/C/MtDec.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd7.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd7Dec.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd7Enc.c"
  "${PROJECT_SOURCE_DIR}/C/Sort.c"
  "${PROJECT_SOURCE_DIR}/C/SwapBytes.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"

  resource.rc
)

AddAesSources(Format7z)
AddCrcSources(Format7z)
AddLzFindOptSources(Format7z)
AddLzmaDecSources(Format7z)
AddSha256Sources(Format7z)

set_target_properties(
  Format7z
  PROPERTIES
    OUTPUT_NAME 7za
    PREFIX ""
    PDB_NAME "7za.dll"
)

target_compile_definitions(
  Format7z PRIVATE

  Z7_DEFLATE_EXTRACT_ONLY
  Z7_BZIP2_EXTRACT_ONLY
)

install(TARGETS Format7z)
