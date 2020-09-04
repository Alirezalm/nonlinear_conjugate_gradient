/* Created by Alirezalm on 04/09/2020.
 * This header file provides problem class for solving the following optimization problem
 *                      min_x f(x)
 * where, f is a convex function and x is a n-dim decision variable.
 *
 */

#include <iostream>
#include <functional>
#include <cmath>
#include "eigen3/Eigen/Dense"
#include <string>
#include "methods.h"

#ifndef NONLINEAR_CONJUGATE_GRADIENT_PROBLEM_H
#define NONLINEAR_CONJUGATE_GRADIENT_PROBLEM_H

template<typename ObjFunc, typename GradFunc>

class Problem {

public:
    Problem(ObjFunc &obj_func, GradFunc &grad_func); // default constructor

    void solve(std:: string method);
private:
    ObjFunc obj_func;
    GradFunc grad_func;


};

template<typename ObjFunc, typename GradFunc>
Problem<ObjFunc, GradFunc>::Problem(ObjFunc &obj_func, GradFunc &grad_func) {
    this ->obj_func = obj_func;
    this -> grad_func = grad_func;

}

template<typename ObjFunc, typename GradFunc>
void Problem<ObjFunc, GradFunc>::solve(std::string method) {
    if (method == "CG"){
        cg(obj_func, grad_func);
    };
}




#endif //NONLINEAR_CONJUGATE_GRADIENT_PROBLEM_H
