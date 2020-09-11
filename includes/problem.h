/* Created by Alirezalm on 04/09/2020.
 * This header file provides problem class for solving the following optimization problem
 *                      min_x f(x)
 * where, f is a convex function and x is a n-dim decision variable.
 *
 */
#include "cg.h"

#ifndef NONLINEAR_CONJUGATE_GRADIENT_PROBLEM_H
#define NONLINEAR_CONJUGATE_GRADIENT_PROBLEM_H

class Problem {//optimization problem class
public:
    Problem(objtype &obj_func, gradtype &grad_func); // default constructor

    void solve(std::string &method, vec &init); //nonlinear conjugate gradient solver starts

private:
    objtype obj_func; //user function
    gradtype grad_func;//user grad function


};
#endif //NONLINEAR_CONJUGATE_GRADIENT_PROBLEM_H
