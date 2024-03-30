# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-src"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-build"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/tmp"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicersources-subbuild/slicersources-populate-prefix/src/slicersources-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
