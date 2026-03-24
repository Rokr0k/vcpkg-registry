vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Rokr0k/gar
  REF f9894a22b0980cdf059e1e175c28ef2b79b50583
  SHA512 36cef5ddc289a808b3e8649c5fc973f962d0d56e59b1055ffbf3ab0a88e971b8ee043990560177ac9dbf2ae04cf8ef6e4d34fef811b73857f75877ab0c26fe5d
  HEAD_REF main)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()

vcpkg_copy_tools(
    TOOL_NAMES gar 
    AUTO_CLEAN)

vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/gar")

vcpkg_copy_pdbs()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
