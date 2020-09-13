cmake_minimum_required(VERSION 3.17)
project(nonlinear_conjugate_gradient)

set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_CXX_COMPILER /home/alireza/intel/compilers_and_libraries_2020.2.254/linux/bin/intel64/icpc)
set (CMAKE_CXX_COMPILER g++)
set (CMAKE_CXX_FLAGS "-fopenmp -O3")
add_executable(nonlinear_conjugate_gradient includes/problem.h includes/cg.h  includes/external_libs.h includes/line_search.h src/problem.cpp src/cg.cpp src/line_search.cpp tests/log_reg_random_test.cpp tests/eigen_omp_oprod.cpp includes/eigen_omp_oprod.h)