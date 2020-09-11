//
// Created by alireza on 04/09/2020.
// This header file provides necessary data types and external libraries.

#ifndef NONLINEAR_CONJUGATE_GRADIENT_EXTERNAL_LIBS_H
#define NONLINEAR_CONJUGATE_GRADIENT_EXTERNAL_LIBS_H
#include "eigen3/Eigen/Dense" //Eigen Linear Algebra library
#include <iostream>
#include <functional>
#include <cmath>
#include <string>
#include <chrono> // time measurement library

namespace time_measure = std:: chrono;
using mat = Eigen::MatrixXd; //dynamic matrix type
using vec = Eigen::VectorXd; //dynamic vector type
using scalar = typename Eigen::MatrixXd :: Scalar ; //eigen scalar type
using objtype = std :: function<scalar(vec)>; //User defined function object
using gradtype = std :: function<vec(vec)>; //user defined function object

#endif //NONLINEAR_CONJUGATE_GRADIENT_EXTERNAL_LIBS_H
