# Install script for directory: /Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SEAL-3.4/seal" TYPE FILE FILES
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/batchencoder.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/biguint.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/ciphertext.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/ckks.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/modulus.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/context.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/decryptor.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/intencoder.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/encryptionparams.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/encryptor.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/evaluator.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/galoiskeys.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/intarray.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/keygenerator.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/kswitchkeys.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/memorymanager.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/modulus.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/plaintext.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/publickey.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/randomgen.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/randomtostd.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/relinkeys.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/seal.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/secretkey.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/serialization.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/smallmodulus.h"
    "/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/valcheck.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/luoyuanhang/Projects/MPC/SEAL/native/src/seal/util/cmake_install.cmake")

endif()

