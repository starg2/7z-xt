
add_executable(
  Alone

  # COMMON
  "${PROJECT_SOURCE_DIR}/CPP/Common/CommandLineParser.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/CrcReg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/DynLimBuf.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/IntToString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/ListFileUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/LzFindPrepare.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/NewHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdInStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StdOutStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyString.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/StringToInt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/UTFConvert.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/MyVector.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Wildcard.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Sha1Reg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Sha256Reg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/Xxh64Reg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/XzCrc64Init.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Common/XzCrc64Reg.cpp"

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
  "${PROJECT_SOURCE_DIR}/CPP/Windows/PropVariantUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Registry.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/Synchronization.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/System.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/SystemInfo.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/Windows/TimeUtils.cpp"

  # 7ZIP_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CreateCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/CWrappers.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilePathAutoRename.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FileStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/FilterCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/InBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/InOutTempBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/LimitedStreams.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MemBlocks.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MethodProps.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/MultiOutStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/OffsetStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/OutBuffer.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/OutMemStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/ProgressMt.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/ProgressUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/PropId.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamBinder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamObjects.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/StreamUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/UniqBlocks.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Common/VirtThread.cpp"

  # AR
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Bz2Handler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/DeflateProps.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/GzHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/LzmaHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/SplitHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/XzHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/ZstdHandler.cpp"

  # AR_COMMON
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/CoderMixer2.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/DummyOutStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/FindSignature.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/HandlerOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/InStreamWithCRC.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/ItemNameUtils.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Common/MultiStream.cpp"
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

  # CAB
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Cab/CabBlockInStream.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Cab/CabHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Cab/CabHeader.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Cab/CabIn.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Cab/CabRegister.cpp"

  # TAR
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarHandlerOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarHeader.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarIn.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarUpdate.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Tar/TarRegister.cpp"

  # ZIP
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipAddCommon.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipHandler.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipHandlerOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipIn.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipItem.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipOut.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipUpdate.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Archive/Zip/ZipRegister.cpp"

  # COMPRESS
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
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BZip2Encoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/BZip2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyCoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/CopyRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Deflate64Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeflateDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeflateEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeflateRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/DeltaFilter.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/ImplodeDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Decoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Encoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/Lzma2Register.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzmaRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzOutWindow.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/LzxDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/PpmdZip.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/QuantumDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/ShrinkDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/XzDecoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/XzEncoder.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Compress/ZstdDecoder.cpp"

  # CRYPTO
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/7zAes.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/7zAesRegister.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/HmacSha1.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/MyAes.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/MyAesReg.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/Pbkdf2HmacSha1.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/RandGen.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/WzAes.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/ZipCrypto.cpp"
  "${PROJECT_SOURCE_DIR}/CPP/7zip/Crypto/ZipStrong.cpp"

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
  "${PROJECT_SOURCE_DIR}/C/Ppmd8.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd8Dec.c"
  "${PROJECT_SOURCE_DIR}/C/Ppmd8Enc.c"
  "${PROJECT_SOURCE_DIR}/C/Sort.c"
  "${PROJECT_SOURCE_DIR}/C/SwapBytes.c"
  "${PROJECT_SOURCE_DIR}/C/Threads.c"
  "${PROJECT_SOURCE_DIR}/C/Xxh64.c"
  "${PROJECT_SOURCE_DIR}/C/Xz.c"
  "${PROJECT_SOURCE_DIR}/C/XzDec.c"
  "${PROJECT_SOURCE_DIR}/C/XzEnc.c"
  "${PROJECT_SOURCE_DIR}/C/XzIn.c"
  "${PROJECT_SOURCE_DIR}/C/ZstdDec.c"

  resource.rc
)

AddConsoleSources(Alone)

AddAesSources(Alone)
AddCrcSources(Alone)
AddCrc64Sources(Alone)
AddLzFindOptSources(Alone)
AddLzmaDecSources(Alone)
AddSha1Sources(Alone)
AddSha256Sources(Alone)

set_target_properties(
  Alone
  PROPERTIES
    OUTPUT_NAME 7za
    PREFIX ""
    PDB_NAME "7za.exe"
)

target_compile_definitions(
  Alone PRIVATE

  Z7_ZIP_LZFSE_DISABLE
)

install(TARGETS Alone)
