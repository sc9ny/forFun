cmake_minimum_required(VERSION 3.5)
project(ASSESSMENT CXX)

# prevent accidental in-source builds, these cause lots of problems
#if(${CMAKE_SOURCE_DIR} STREQUAL ${CMAKE_BINARY_DIR})
#  message(FATAL_ERROR "In-source builds not allowed. Remove any files created thus far #and use a different directory for the build.")
#endif()
 


# Add your own path here!
set (CMAKE_PREFIX_PATH "/Users/seungleechoi/Qt/5.9.2/clang_64/lib/cmake/Qt5") 


# require a C++11 compiler and use it for all targets
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# configure Qt
set(CMAKE_AUTOMOC ON)
set(CMAKE_INCLUDE_CURRENT_DIR ON)
find_package(Qt5 COMPONENTS Widgets Test REQUIRED)

set(SOURCE gui_2.hpp gui_2.cpp main.cpp)

add_executable(GUI_2 main.cpp ${SOURCE})
target_link_libraries(GUI_2 Qt5::Widgets)
INSTALL (TARGETS GUI_2 DESTINATION bin)
	
