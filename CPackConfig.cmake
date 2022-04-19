# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_BINARY_BUNDLE "OFF")
set(CPACK_BINARY_DEB "OFF")
set(CPACK_BINARY_DRAGNDROP "OFF")
set(CPACK_BINARY_FREEBSD "OFF")
set(CPACK_BINARY_IFW "OFF")
set(CPACK_BINARY_NSIS "OFF")
set(CPACK_BINARY_PACKAGEMAKER "OFF")
set(CPACK_BINARY_PRODUCTBUILD "OFF")
set(CPACK_BINARY_RPM "OFF")
set(CPACK_BINARY_STGZ "ON")
set(CPACK_BINARY_TBZ2 "OFF")
set(CPACK_BINARY_TGZ "ON")
set(CPACK_BINARY_TXZ "OFF")
set(CPACK_BUILD_SOURCE_DIRS "/Users/cpark/Desktop/valhalla;/Users/cpark/Desktop/valhalla")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "development")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_PYHON_DESCRIPTION "OpenStreetMap Routing Python Bindings
 A set routing APIs designed around OSM map data using
 dynamic costing and a tiled data structure and
 accompanying tools and services used to analyse and
 compute routes using those APIs")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEBIAN_PACKAGE_DEBUG "OFF")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/usr/local/Cellar/cmake/3.23.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "valhalla built using CMake")
set(CPACK_DMG_SLA_USE_RESOURCE_FILE_LICENSE "ON")
set(CPACK_GENERATOR "STGZ;TGZ")
set(CPACK_INSTALL_CMAKE_PROJECTS "/Users/cpark/Desktop/valhalla;valhalla;ALL;/")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/;/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/;/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/;/Users/cpark/Desktop/valhalla/cmake;/Users/cpark/Desktop/valhalla")
set(CPACK_NSIS_DISPLAY_NAME "valhalla 3.1.4")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "valhalla 3.1.4")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OSX_SYSROOT "/Library/Developer/CommandLineTools/SDKs/MacOSX12.3.sdk")
set(CPACK_OUTPUT_CONFIG_FILE "/Users/cpark/Desktop/valhalla/CPackConfig.cmake")
set(CPACK_PACKAGE_CONTACT "Team Valhalla <valhalla@mapzen.com>")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/local/Cellar/cmake/3.23.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "OpenStreetMap Routing API
 A set of routing APIs designed around OSM map data using
 dynamic costing and a tiled data structure")
set(CPACK_PACKAGE_FILE_NAME "valhalla-3.1.4-Darwin")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "valhalla 3.1.4")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "valhalla 3.1.4")
set(CPACK_PACKAGE_NAME "valhalla")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "3.1.4")
set(CPACK_PACKAGE_VERSION_MAJOR "3")
set(CPACK_PACKAGE_VERSION_MINOR "1")
set(CPACK_PACKAGE_VERSION_PATCH "4")
set(CPACK_PROJECT_CONFIG_FILE "/Users/cpark/Desktop/valhalla/cmake/CPackConfig.cmake")
set(CPACK_RESOURCE_FILE_LICENSE "/Users/cpark/Desktop/valhalla/LICENSE.md")
set(CPACK_RESOURCE_FILE_README "/usr/local/Cellar/cmake/3.23.1/share/cmake/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/local/Cellar/cmake/3.23.1/share/cmake/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "TBZ2;TGZ;TXZ;TZ")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/Users/cpark/Desktop/valhalla/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "libvalhalla")
set(CPACK_SOURCE_RPM "OFF")
set(CPACK_SOURCE_TBZ2 "ON")
set(CPACK_SOURCE_TGZ "ON")
set(CPACK_SOURCE_TXZ "ON")
set(CPACK_SOURCE_TZ "ON")
set(CPACK_SOURCE_ZIP "OFF")
set(CPACK_STRIP_FILES "TRUE")
set(CPACK_SYSTEM_NAME "Darwin")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "Darwin")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/Users/cpark/Desktop/valhalla/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
