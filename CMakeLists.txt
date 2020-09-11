cmake_minimum_required(VERSION 3.17)
project(nonlinear_conjugate_gradient)

set(CMAKE_CXX_STANDARD 11)

add_executable(nonlinear_conjugate_gradient tests/random_test.cpp includes/problem.h includes/cg.h  includes/external_libs.h includes/line_search.h src/problem.cpp src/cg.cpp src/line_search.cpp)