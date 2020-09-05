//
// Created by alireza on 04/09/2020.
//

#ifndef NONLINEAR_CONJUGATE_GRADIENT_EXTERNAL_LIBS_H
#define NONLINEAR_CONJUGATE_GRADIENT_EXTERNAL_LIBS_H
#include "eigen3/Eigen/Dense"
#include <iostream>
#include <iostream>
#include <functional>
#include <cmath>
#include <string>
#include <chrono>

namespace time_measure = std:: chrono;
using mat = Eigen::MatrixXd;
using vec = Eigen::VectorXd;
using scalar = typename Eigen::MatrixXd :: Scalar ;
using objtype = std :: function<scalar(vec)>;
using gradtype = std :: function<vec(vec)>;

#endif //NONLINEAR_CONJUGATE_GRADIENT_EXTERNAL_LIBS_H
