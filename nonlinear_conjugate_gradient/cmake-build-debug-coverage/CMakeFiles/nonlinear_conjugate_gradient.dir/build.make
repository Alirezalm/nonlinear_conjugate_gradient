# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

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
CMAKE_COMMAND = /home/alireza/Downloads/clion-2020.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/alireza/Downloads/clion-2020.2/bin/cmake/linux/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage

# Include any dependencies generated for this target.
include CMakeFiles/nonlinear_conjugate_gradient.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/nonlinear_conjugate_gradient.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make

CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.o: CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make
CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.o: ../src/problem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.o -c /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/problem.cpp

CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/problem.cpp > CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.i

CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/problem.cpp -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.s

CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.o: CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make
CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.o: ../src/cg.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.o -c /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/cg.cpp

CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/cg.cpp > CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.i

CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/cg.cpp -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.s

CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.o: CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make
CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.o: ../src/line_search.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.o -c /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/line_search.cpp

CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/line_search.cpp > CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.i

CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/line_search.cpp -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.s

CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.o: CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make
CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.o: ../tests/log_reg_random_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.o -c /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/tests/log_reg_random_test.cpp

CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/tests/log_reg_random_test.cpp > CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.i

CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/tests/log_reg_random_test.cpp -o CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.s

CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.o: CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make
CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.o: ../tests/eigen_omp_oprod.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.o -c /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/tests/eigen_omp_oprod.cpp

CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/tests/eigen_omp_oprod.cpp > CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.i

CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/tests/eigen_omp_oprod.cpp -o CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.s

CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.o: CMakeFiles/nonlinear_conjugate_gradient.dir/flags.make
CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.o: ../src/results.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.o"
	g++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.o -c /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/results.cpp

CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/results.cpp > CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.i

CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/src/results.cpp -o CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.s

# Object files for target nonlinear_conjugate_gradient
nonlinear_conjugate_gradient_OBJECTS = \
"CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.o" \
"CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.o" \
"CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.o" \
"CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.o" \
"CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.o" \
"CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.o"

# External object files for target nonlinear_conjugate_gradient
nonlinear_conjugate_gradient_EXTERNAL_OBJECTS =

nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/src/problem.cpp.o
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/src/cg.cpp.o
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/src/line_search.cpp.o
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/tests/log_reg_random_test.cpp.o
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/tests/eigen_omp_oprod.cpp.o
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/src/results.cpp.o
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/build.make
nonlinear_conjugate_gradient: CMakeFiles/nonlinear_conjugate_gradient.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable nonlinear_conjugate_gradient"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nonlinear_conjugate_gradient.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/nonlinear_conjugate_gradient.dir/build: nonlinear_conjugate_gradient

.PHONY : CMakeFiles/nonlinear_conjugate_gradient.dir/build

CMakeFiles/nonlinear_conjugate_gradient.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/nonlinear_conjugate_gradient.dir/cmake_clean.cmake
.PHONY : CMakeFiles/nonlinear_conjugate_gradient.dir/clean

CMakeFiles/nonlinear_conjugate_gradient.dir/depend:
	cd /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage /home/alireza/PhDRepository/implementations/DIPOA/nonlinear_conjugate_gradient/cmake-build-debug-coverage/CMakeFiles/nonlinear_conjugate_gradient.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/nonlinear_conjugate_gradient.dir/depend

