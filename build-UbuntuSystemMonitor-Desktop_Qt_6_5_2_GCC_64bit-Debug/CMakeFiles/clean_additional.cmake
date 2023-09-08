# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appUbuntuSystemMonitor_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appUbuntuSystemMonitor_autogen.dir/ParseCache.txt"
  "appUbuntuSystemMonitor_autogen"
  )
endif()
