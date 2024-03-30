# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if(EXISTS "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitclone-lastrun.txt" AND EXISTS "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitinfo.txt" AND
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitclone-lastrun.txt" IS_NEWER_THAN "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitinfo.txt")
  message(STATUS
    "Avoiding repeated git clone, stamp file is up to date: "
    "'/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitclone-lastrun.txt'"
  )
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-src'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"
            clone --no-checkout --progress --config "advice.detachedHead=false" "https://github.com/Slicer/Slicer" "slicersources-src"
    WORKING_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool"
    RESULT_VARIABLE error_code
  )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once: ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/Slicer/Slicer'")
endif()

execute_process(
  COMMAND "/usr/bin/git"
          checkout "fd82ad437209a3ac7b6c4cebb674f60102b9c43d" --
  WORKING_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-src"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: 'fd82ad437209a3ac7b6c4cebb674f60102b9c43d'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git" 
            submodule update --recursive --init 
    WORKING_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-src"
    RESULT_VARIABLE error_code
  )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-src'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitinfo.txt" "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
)
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/slicersources-populate-gitclone-lastrun.txt'")
endif()
