# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/hohayrap/Desktop/FDF

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/hohayrap/Desktop/FDF/build

# Utility rule file for fclean.

# Include any custom commands dependencies for this target.
include CMakeFiles/fclean.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fclean.dir/progress.make

CMakeFiles/fclean:
	make clean /home/hohayrap/Desktop/FDF/build
	rm -rf /home/hohayrap/Desktop/FDF/CMakeCache.txt
	rm -rf /home/hohayrap/Desktop/FDF/CMakeFiles/
	rm -rf /home/hohayrap/Desktop/FDF/Makefile
	rm -rf /home/hohayrap/Desktop/FDF/cmake_install.cmake

fclean: CMakeFiles/fclean
fclean: CMakeFiles/fclean.dir/build.make
.PHONY : fclean

# Rule to build all files generated by this target.
CMakeFiles/fclean.dir/build: fclean
.PHONY : CMakeFiles/fclean.dir/build

CMakeFiles/fclean.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fclean.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fclean.dir/clean

CMakeFiles/fclean.dir/depend:
	cd /home/hohayrap/Desktop/FDF/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/hohayrap/Desktop/FDF /home/hohayrap/Desktop/FDF /home/hohayrap/Desktop/FDF/build /home/hohayrap/Desktop/FDF/build /home/hohayrap/Desktop/FDF/build/CMakeFiles/fclean.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/fclean.dir/depend

