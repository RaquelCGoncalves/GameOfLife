# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/raquel/Desktop/gameoflife

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/raquel/Desktop/gameoflife/build

# Include any dependencies generated for this target.
include CMakeFiles/gameoflife.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gameoflife.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gameoflife.dir/flags.make

CMakeFiles/gameoflife.dir/main.cpp.o: CMakeFiles/gameoflife.dir/flags.make
CMakeFiles/gameoflife.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/raquel/Desktop/gameoflife/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gameoflife.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gameoflife.dir/main.cpp.o -c /home/raquel/Desktop/gameoflife/main.cpp

CMakeFiles/gameoflife.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gameoflife.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/raquel/Desktop/gameoflife/main.cpp > CMakeFiles/gameoflife.dir/main.cpp.i

CMakeFiles/gameoflife.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gameoflife.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/raquel/Desktop/gameoflife/main.cpp -o CMakeFiles/gameoflife.dir/main.cpp.s

# Object files for target gameoflife
gameoflife_OBJECTS = \
"CMakeFiles/gameoflife.dir/main.cpp.o"

# External object files for target gameoflife
gameoflife_EXTERNAL_OBJECTS =

gameoflife: CMakeFiles/gameoflife.dir/main.cpp.o
gameoflife: CMakeFiles/gameoflife.dir/build.make
gameoflife: CMakeFiles/gameoflife.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/raquel/Desktop/gameoflife/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable gameoflife"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gameoflife.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gameoflife.dir/build: gameoflife

.PHONY : CMakeFiles/gameoflife.dir/build

CMakeFiles/gameoflife.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gameoflife.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gameoflife.dir/clean

CMakeFiles/gameoflife.dir/depend:
	cd /home/raquel/Desktop/gameoflife/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/raquel/Desktop/gameoflife /home/raquel/Desktop/gameoflife /home/raquel/Desktop/gameoflife/build /home/raquel/Desktop/gameoflife/build /home/raquel/Desktop/gameoflife/build/CMakeFiles/gameoflife.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gameoflife.dir/depend
