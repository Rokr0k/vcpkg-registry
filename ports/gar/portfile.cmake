vcpkg_from_github(
  OUT_SOURCE_PATH SOURCE_PATH
  REPO Rokr0k/gar
  REF 526aa6c692d72f5f2dc54d0b1a112ab3a327e2d9
  SHA512 d2e607db0b2035902c598faca732b714ceacceea745419c31e34d3296533e09cf48a2ef534fdddb840f52ff399c17aae39824038d38678389847d5e0a0711876
  HEAD_REF main)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH})
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH "lib/cmake/gar")

vcpkg_copy_pdbs()
vcpkg_copy_tools(
    TOOL_NAMES gar 
    AUTO_CLEAN)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
