//
// Created by alireza on 05/09/2020.
//

#include "../includes/problem.h"

Problem::Problem(objtype &obj_func, gradtype &grad_func) {
    this->obj_func = obj_func;
    this->grad_func = grad_func;
}

void Problem::solve(std::string &method, vec &init) {
    if (method == "CG") {
        cg(obj_func, grad_func, init);
    };
}
