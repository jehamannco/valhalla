########## MACROS ###########################################################################
#############################################################################################

function(conan_message MESSAGE_OUTPUT)
    if(NOT CONAN_CMAKE_SILENT_OUTPUT)
        message(${ARGV${0}})
    endif()
endfunction()


macro(conan_find_apple_frameworks FRAMEWORKS_FOUND FRAMEWORKS FRAMEWORKS_DIRS)
    if(APPLE)
        foreach(_FRAMEWORK ${FRAMEWORKS})
            # https://cmake.org/pipermail/cmake-developers/2017-August/030199.html
            find_library(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND NAME ${_FRAMEWORK} PATHS ${FRAMEWORKS_DIRS} CMAKE_FIND_ROOT_PATH_BOTH)
            if(CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND)
                list(APPEND ${FRAMEWORKS_FOUND} ${CONAN_FRAMEWORK_${_FRAMEWORK}_FOUND})
            else()
                message(FATAL_ERROR "Framework library ${_FRAMEWORK} not found in paths: ${FRAMEWORKS_DIRS}")
            endif()
        endforeach()
    endif()
endmacro()


function(conan_package_library_targets libraries package_libdir deps out_libraries out_libraries_target build_type package_name)
    unset(_CONAN_ACTUAL_TARGETS CACHE)
    unset(_CONAN_FOUND_SYSTEM_LIBS CACHE)
    foreach(_LIBRARY_NAME ${libraries})
        find_library(CONAN_FOUND_LIBRARY NAME ${_LIBRARY_NAME} PATHS ${package_libdir}
                     NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
        if(CONAN_FOUND_LIBRARY)
            conan_message(STATUS "Library ${_LIBRARY_NAME} found ${CONAN_FOUND_LIBRARY}")
            list(APPEND _out_libraries ${CONAN_FOUND_LIBRARY})
            if(NOT ${CMAKE_VERSION} VERSION_LESS "3.0")
                # Create a micro-target for each lib/a found
                string(REGEX REPLACE "[^A-Za-z0-9.+_-]" "_" _LIBRARY_NAME ${_LIBRARY_NAME})
                set(_LIB_NAME CONAN_LIB::${package_name}_${_LIBRARY_NAME}${build_type})
                if(NOT TARGET ${_LIB_NAME})
                    # Create a micro-target for each lib/a found
                    add_library(${_LIB_NAME} UNKNOWN IMPORTED)
                    set_target_properties(${_LIB_NAME} PROPERTIES IMPORTED_LOCATION ${CONAN_FOUND_LIBRARY})
                    set(_CONAN_ACTUAL_TARGETS ${_CONAN_ACTUAL_TARGETS} ${_LIB_NAME})
                else()
                    conan_message(STATUS "Skipping already existing target: ${_LIB_NAME}")
                endif()
                list(APPEND _out_libraries_target ${_LIB_NAME})
            endif()
            conan_message(STATUS "Found: ${CONAN_FOUND_LIBRARY}")
        else()
            conan_message(STATUS "Library ${_LIBRARY_NAME} not found in package, might be system one")
            list(APPEND _out_libraries_target ${_LIBRARY_NAME})
            list(APPEND _out_libraries ${_LIBRARY_NAME})
            set(_CONAN_FOUND_SYSTEM_LIBS "${_CONAN_FOUND_SYSTEM_LIBS};${_LIBRARY_NAME}")
        endif()
        unset(CONAN_FOUND_LIBRARY CACHE)
    endforeach()

    if(NOT ${CMAKE_VERSION} VERSION_LESS "3.0")
        # Add all dependencies to all targets
        string(REPLACE " " ";" deps_list "${deps}")
        foreach(_CONAN_ACTUAL_TARGET ${_CONAN_ACTUAL_TARGETS})
            set_property(TARGET ${_CONAN_ACTUAL_TARGET} PROPERTY INTERFACE_LINK_LIBRARIES "${_CONAN_FOUND_SYSTEM_LIBS};${deps_list}")
        endforeach()
    endif()

    set(${out_libraries} ${_out_libraries} PARENT_SCOPE)
    set(${out_libraries_target} ${_out_libraries_target} PARENT_SCOPE)
endfunction()


########### FOUND PACKAGE ###################################################################
#############################################################################################

include(FindPackageHandleStandardArgs)

conan_message(STATUS "Conan: Using autogenerated FindBoost.cmake")
set(Boost_FOUND 1)
set(Boost_VERSION "1.71.0")

find_package_handle_standard_args(Boost REQUIRED_VARS
                                  Boost_VERSION VERSION_VAR Boost_VERSION)
mark_as_advanced(Boost_FOUND Boost_VERSION)

set(Boost_COMPONENTS Boost::boost Boost::headers)

if(Boost_FIND_COMPONENTS)
    foreach(_FIND_COMPONENT ${Boost_FIND_COMPONENTS})
        list(FIND Boost_COMPONENTS "Boost::${_FIND_COMPONENT}" _index)
        if(${_index} EQUAL -1)
            conan_message(FATAL_ERROR "Conan: Component '${_FIND_COMPONENT}' NOT found in package 'Boost'")
        else()
            conan_message(STATUS "Conan: Component '${_FIND_COMPONENT}' found in package 'Boost'")
        endif()
    endforeach()
endif()

########### VARIABLES #######################################################################
#############################################################################################


set(Boost_INCLUDE_DIRS "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_INCLUDE_DIR "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_INCLUDES "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_RES_DIRS )
set(Boost_DEFINITIONS )
set(Boost_LINKER_FLAGS_LIST
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:>"
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:>"
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:>"
)
set(Boost_COMPILE_DEFINITIONS )
set(Boost_COMPILE_OPTIONS_LIST "" "")
set(Boost_COMPILE_OPTIONS_C "")
set(Boost_COMPILE_OPTIONS_CXX "")
set(Boost_LIBRARIES_TARGETS "") # Will be filled later, if CMake 3
set(Boost_LIBRARIES "") # Will be filled later
set(Boost_LIBS "") # Same as Boost_LIBRARIES
set(Boost_SYSTEM_LIBS )
set(Boost_FRAMEWORK_DIRS )
set(Boost_FRAMEWORKS )
set(Boost_FRAMEWORKS_FOUND "") # Will be filled later
set(Boost_BUILD_MODULES_PATHS )

conan_find_apple_frameworks(Boost_FRAMEWORKS_FOUND "${Boost_FRAMEWORKS}" "${Boost_FRAMEWORK_DIRS}")

mark_as_advanced(Boost_INCLUDE_DIRS
                 Boost_INCLUDE_DIR
                 Boost_INCLUDES
                 Boost_DEFINITIONS
                 Boost_LINKER_FLAGS_LIST
                 Boost_COMPILE_DEFINITIONS
                 Boost_COMPILE_OPTIONS_LIST
                 Boost_LIBRARIES
                 Boost_LIBS
                 Boost_LIBRARIES_TARGETS)

# Find the real .lib/.a and add them to Boost_LIBS and Boost_LIBRARY_LIST
set(Boost_LIBRARY_LIST )
set(Boost_LIB_DIRS )

# Gather all the libraries that should be linked to the targets (do not touch existing variables):
set(_Boost_DEPENDENCIES "${Boost_FRAMEWORKS_FOUND} ${Boost_SYSTEM_LIBS} ")

conan_package_library_targets("${Boost_LIBRARY_LIST}"  # libraries
                              "${Boost_LIB_DIRS}"      # package_libdir
                              "${_Boost_DEPENDENCIES}"  # deps
                              Boost_LIBRARIES            # out_libraries
                              Boost_LIBRARIES_TARGETS    # out_libraries_targets
                              ""                          # build_type
                              "Boost")                                      # package_name

set(Boost_LIBS ${Boost_LIBRARIES})

foreach(_FRAMEWORK ${Boost_FRAMEWORKS_FOUND})
    list(APPEND Boost_LIBRARIES_TARGETS ${_FRAMEWORK})
    list(APPEND Boost_LIBRARIES ${_FRAMEWORK})
endforeach()

foreach(_SYSTEM_LIB ${Boost_SYSTEM_LIBS})
    list(APPEND Boost_LIBRARIES_TARGETS ${_SYSTEM_LIB})
    list(APPEND Boost_LIBRARIES ${_SYSTEM_LIB})
endforeach()

# We need to add our requirements too
set(Boost_LIBRARIES_TARGETS "${Boost_LIBRARIES_TARGETS};")
set(Boost_LIBRARIES "${Boost_LIBRARIES};")

set(CMAKE_MODULE_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/" ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/" ${CMAKE_PREFIX_PATH})


########### COMPONENT headers VARIABLES #############################################

set(Boost_headers_INCLUDE_DIRS "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_headers_INCLUDE_DIR "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_headers_INCLUDES "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_headers_LIB_DIRS )
set(Boost_headers_RES_DIRS )
set(Boost_headers_DEFINITIONS )
set(Boost_headers_COMPILE_DEFINITIONS )
set(Boost_headers_COMPILE_OPTIONS_C "")
set(Boost_headers_COMPILE_OPTIONS_CXX "")
set(Boost_headers_LIBS )
set(Boost_headers_SYSTEM_LIBS )
set(Boost_headers_FRAMEWORK_DIRS )
set(Boost_headers_FRAMEWORKS )
set(Boost_headers_BUILD_MODULES_PATHS )
set(Boost_headers_DEPENDENCIES )
set(Boost_headers_LINKER_FLAGS_LIST
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:>"
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:>"
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:>"
)

########### COMPONENT boost VARIABLES #############################################

set(Boost_boost_INCLUDE_DIRS "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_boost_INCLUDE_DIR "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_boost_INCLUDES "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/include")
set(Boost_boost_LIB_DIRS )
set(Boost_boost_RES_DIRS )
set(Boost_boost_DEFINITIONS )
set(Boost_boost_COMPILE_DEFINITIONS )
set(Boost_boost_COMPILE_OPTIONS_C "")
set(Boost_boost_COMPILE_OPTIONS_CXX "")
set(Boost_boost_LIBS )
set(Boost_boost_SYSTEM_LIBS )
set(Boost_boost_FRAMEWORK_DIRS )
set(Boost_boost_FRAMEWORKS )
set(Boost_boost_BUILD_MODULES_PATHS )
set(Boost_boost_DEPENDENCIES Boost::headers)
set(Boost_boost_LINKER_FLAGS_LIST
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,SHARED_LIBRARY>:>"
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,MODULE_LIBRARY>:>"
        "$<$<STREQUAL:$<TARGET_PROPERTY:TYPE>,EXECUTABLE>:>"
)


########## FIND PACKAGE DEPENDENCY ##########################################################
#############################################################################################

include(CMakeFindDependencyMacro)


########## FIND LIBRARIES & FRAMEWORKS / DYNAMIC VARS #######################################
#############################################################################################

########## COMPONENT headers FIND LIBRARIES & FRAMEWORKS / DYNAMIC VARS #############

set(Boost_headers_FRAMEWORKS_FOUND "")
conan_find_apple_frameworks(Boost_headers_FRAMEWORKS_FOUND "${Boost_headers_FRAMEWORKS}" "${Boost_headers_FRAMEWORK_DIRS}")

set(Boost_headers_LIB_TARGETS "")
set(Boost_headers_NOT_USED "")
set(Boost_headers_LIBS_FRAMEWORKS_DEPS ${Boost_headers_FRAMEWORKS_FOUND} ${Boost_headers_SYSTEM_LIBS} ${Boost_headers_DEPENDENCIES})
conan_package_library_targets("${Boost_headers_LIBS}"
                              "${Boost_headers_LIB_DIRS}"
                              "${Boost_headers_LIBS_FRAMEWORKS_DEPS}"
                              Boost_headers_NOT_USED
                              Boost_headers_LIB_TARGETS
                              ""
                              "Boost_headers")

set(Boost_headers_LINK_LIBS ${Boost_headers_LIB_TARGETS} ${Boost_headers_LIBS_FRAMEWORKS_DEPS})

set(CMAKE_MODULE_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/" ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/" ${CMAKE_PREFIX_PATH})

########## COMPONENT boost FIND LIBRARIES & FRAMEWORKS / DYNAMIC VARS #############

set(Boost_boost_FRAMEWORKS_FOUND "")
conan_find_apple_frameworks(Boost_boost_FRAMEWORKS_FOUND "${Boost_boost_FRAMEWORKS}" "${Boost_boost_FRAMEWORK_DIRS}")

set(Boost_boost_LIB_TARGETS "")
set(Boost_boost_NOT_USED "")
set(Boost_boost_LIBS_FRAMEWORKS_DEPS ${Boost_boost_FRAMEWORKS_FOUND} ${Boost_boost_SYSTEM_LIBS} ${Boost_boost_DEPENDENCIES})
conan_package_library_targets("${Boost_boost_LIBS}"
                              "${Boost_boost_LIB_DIRS}"
                              "${Boost_boost_LIBS_FRAMEWORKS_DEPS}"
                              Boost_boost_NOT_USED
                              Boost_boost_LIB_TARGETS
                              ""
                              "Boost_boost")

set(Boost_boost_LINK_LIBS ${Boost_boost_LIB_TARGETS} ${Boost_boost_LIBS_FRAMEWORKS_DEPS})

set(CMAKE_MODULE_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/" ${CMAKE_MODULE_PATH})
set(CMAKE_PREFIX_PATH "/Users/cpark/.conan/data/boost/1.71.0/_/_/package/524ea35a8120baabdde02483add58d81bf541327/" ${CMAKE_PREFIX_PATH})


########## TARGETS ##########################################################################
#############################################################################################

########## COMPONENT headers TARGET #################################################

if(NOT ${CMAKE_VERSION} VERSION_LESS "3.0")
    # Target approach
    if(NOT TARGET Boost::headers)
        add_library(Boost::headers INTERFACE IMPORTED)
        set_target_properties(Boost::headers PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                              "${Boost_headers_INCLUDE_DIRS}")
        set_target_properties(Boost::headers PROPERTIES INTERFACE_LINK_DIRECTORIES
                              "${Boost_headers_LIB_DIRS}")
        set_target_properties(Boost::headers PROPERTIES INTERFACE_LINK_LIBRARIES
                              "${Boost_headers_LINK_LIBS};${Boost_headers_LINKER_FLAGS_LIST}")
        set_target_properties(Boost::headers PROPERTIES INTERFACE_COMPILE_DEFINITIONS
                              "${Boost_headers_COMPILE_DEFINITIONS}")
        set_target_properties(Boost::headers PROPERTIES INTERFACE_COMPILE_OPTIONS
                              "${Boost_headers_COMPILE_OPTIONS_C};${Boost_headers_COMPILE_OPTIONS_CXX}")
    endif()
endif()

########## COMPONENT boost TARGET #################################################

if(NOT ${CMAKE_VERSION} VERSION_LESS "3.0")
    # Target approach
    if(NOT TARGET Boost::boost)
        add_library(Boost::boost INTERFACE IMPORTED)
        set_target_properties(Boost::boost PROPERTIES INTERFACE_INCLUDE_DIRECTORIES
                              "${Boost_boost_INCLUDE_DIRS}")
        set_target_properties(Boost::boost PROPERTIES INTERFACE_LINK_DIRECTORIES
                              "${Boost_boost_LIB_DIRS}")
        set_target_properties(Boost::boost PROPERTIES INTERFACE_LINK_LIBRARIES
                              "${Boost_boost_LINK_LIBS};${Boost_boost_LINKER_FLAGS_LIST}")
        set_target_properties(Boost::boost PROPERTIES INTERFACE_COMPILE_DEFINITIONS
                              "${Boost_boost_COMPILE_DEFINITIONS}")
        set_target_properties(Boost::boost PROPERTIES INTERFACE_COMPILE_OPTIONS
                              "${Boost_boost_COMPILE_OPTIONS_C};${Boost_boost_COMPILE_OPTIONS_CXX}")
    endif()
endif()

########## GLOBAL TARGET ####################################################################

if(NOT ${CMAKE_VERSION} VERSION_LESS "3.0")
    if(NOT TARGET Boost::Boost)
        add_library(Boost::Boost INTERFACE IMPORTED)
    endif()
    set_property(TARGET Boost::Boost APPEND PROPERTY
                 INTERFACE_LINK_LIBRARIES "${Boost_COMPONENTS}")
endif()

########## BUILD MODULES ####################################################################
#############################################################################################
########## COMPONENT headers BUILD MODULES ##########################################

foreach(_BUILD_MODULE_PATH ${Boost_headers_BUILD_MODULES_PATHS})
    include(${_BUILD_MODULE_PATH})
endforeach()
########## COMPONENT boost BUILD MODULES ##########################################

foreach(_BUILD_MODULE_PATH ${Boost_boost_BUILD_MODULES_PATHS})
    include(${_BUILD_MODULE_PATH})
endforeach()
