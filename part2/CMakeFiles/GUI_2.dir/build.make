# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2"

# Include any dependencies generated for this target.
include CMakeFiles/GUI_2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/GUI_2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GUI_2.dir/flags.make

CMakeFiles/GUI_2.dir/main.cpp.o: CMakeFiles/GUI_2.dir/flags.make
CMakeFiles/GUI_2.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GUI_2.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GUI_2.dir/main.cpp.o -c "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/main.cpp"

CMakeFiles/GUI_2.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GUI_2.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/main.cpp" > CMakeFiles/GUI_2.dir/main.cpp.i

CMakeFiles/GUI_2.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GUI_2.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/main.cpp" -o CMakeFiles/GUI_2.dir/main.cpp.s

CMakeFiles/GUI_2.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/GUI_2.dir/main.cpp.o.requires

CMakeFiles/GUI_2.dir/main.cpp.o.provides: CMakeFiles/GUI_2.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/GUI_2.dir/build.make CMakeFiles/GUI_2.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/GUI_2.dir/main.cpp.o.provides

CMakeFiles/GUI_2.dir/main.cpp.o.provides.build: CMakeFiles/GUI_2.dir/main.cpp.o


CMakeFiles/GUI_2.dir/gui_2.cpp.o: CMakeFiles/GUI_2.dir/flags.make
CMakeFiles/GUI_2.dir/gui_2.cpp.o: gui_2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/GUI_2.dir/gui_2.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GUI_2.dir/gui_2.cpp.o -c "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/gui_2.cpp"

CMakeFiles/GUI_2.dir/gui_2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GUI_2.dir/gui_2.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/gui_2.cpp" > CMakeFiles/GUI_2.dir/gui_2.cpp.i

CMakeFiles/GUI_2.dir/gui_2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GUI_2.dir/gui_2.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/gui_2.cpp" -o CMakeFiles/GUI_2.dir/gui_2.cpp.s

CMakeFiles/GUI_2.dir/gui_2.cpp.o.requires:

.PHONY : CMakeFiles/GUI_2.dir/gui_2.cpp.o.requires

CMakeFiles/GUI_2.dir/gui_2.cpp.o.provides: CMakeFiles/GUI_2.dir/gui_2.cpp.o.requires
	$(MAKE) -f CMakeFiles/GUI_2.dir/build.make CMakeFiles/GUI_2.dir/gui_2.cpp.o.provides.build
.PHONY : CMakeFiles/GUI_2.dir/gui_2.cpp.o.provides

CMakeFiles/GUI_2.dir/gui_2.cpp.o.provides.build: CMakeFiles/GUI_2.dir/gui_2.cpp.o


CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o: CMakeFiles/GUI_2.dir/flags.make
CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o: GUI_2_automoc.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o -c "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/GUI_2_automoc.cpp"

CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/GUI_2_automoc.cpp" > CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.i

CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/GUI_2_automoc.cpp" -o CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.s

CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.requires:

.PHONY : CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.requires

CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.provides: CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.requires
	$(MAKE) -f CMakeFiles/GUI_2.dir/build.make CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.provides.build
.PHONY : CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.provides

CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.provides.build: CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o


# Object files for target GUI_2
GUI_2_OBJECTS = \
"CMakeFiles/GUI_2.dir/main.cpp.o" \
"CMakeFiles/GUI_2.dir/gui_2.cpp.o" \
"CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o"

# External object files for target GUI_2
GUI_2_EXTERNAL_OBJECTS =

GUI_2: CMakeFiles/GUI_2.dir/main.cpp.o
GUI_2: CMakeFiles/GUI_2.dir/gui_2.cpp.o
GUI_2: CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o
GUI_2: CMakeFiles/GUI_2.dir/build.make
GUI_2: /Users/seungleechoi/Qt/5.9.2/clang_64/lib/QtWidgets.framework/QtWidgets
GUI_2: /Users/seungleechoi/Qt/5.9.2/clang_64/lib/QtGui.framework/QtGui
GUI_2: /Users/seungleechoi/Qt/5.9.2/clang_64/lib/QtCore.framework/QtCore
GUI_2: CMakeFiles/GUI_2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable GUI_2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GUI_2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GUI_2.dir/build: GUI_2

.PHONY : CMakeFiles/GUI_2.dir/build

CMakeFiles/GUI_2.dir/requires: CMakeFiles/GUI_2.dir/main.cpp.o.requires
CMakeFiles/GUI_2.dir/requires: CMakeFiles/GUI_2.dir/gui_2.cpp.o.requires
CMakeFiles/GUI_2.dir/requires: CMakeFiles/GUI_2.dir/GUI_2_automoc.cpp.o.requires

.PHONY : CMakeFiles/GUI_2.dir/requires

CMakeFiles/GUI_2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GUI_2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GUI_2.dir/clean

CMakeFiles/GUI_2.dir/depend:
	cd "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2" "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2" "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2" "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2" "/Users/seungleechoi/desktop/untitled folder/software_accessment_part2/CMakeFiles/GUI_2.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/GUI_2.dir/depend

