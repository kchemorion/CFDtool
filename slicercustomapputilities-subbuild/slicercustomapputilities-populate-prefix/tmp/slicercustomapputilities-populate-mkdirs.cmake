# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/SlicerCustomAppUtilities"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-build"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix/tmp"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix/src/slicercustomapputilities-populate-stamp"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix/src"
  "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix/src/slicercustomapputilities-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix/src/slicercustomapputilities-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/blvksh33p/Desktop/CFDtool/CFDtool/slicercustomapputilities-subbuild/slicercustomapputilities-populate-prefix/src/slicercustomapputilities-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
