//
// Created by alireza on 04/09/2020.
//

#ifndef NONLINEAR_CONJUGATE_GRADIENT_CG_H
#define NONLINEAR_CONJUGATE_GRADIENT_CG_H
#include "external_libs.h"


template<typename ObjFunc, typename GradFunc>
void cg (ObjFunc &obj_func, GradFunc &grad_func, vec &init){

    const int n = init.size();
    vec &x = init;
    vec f = obj_func(x);
    vec g = grad_func(x);
    vec old_g = g;
    vec p = -g;
    scalar error = g.norm();
    scalar eps = 1e-5;
    scalar alpha;
    scalar beta;
    int max_iter = 100;
    int iter = 0;
    while ((error > eps) && iter < max_iter){
        iter++;
        alpha = 0.25; // wolfe line search has not been implemented.
        x += alpha * p;

        g = grad_func(x);
        beta = (g.dot(g)) / (old_g.dot(old_g));
        old_g = g;

        p = -g + (beta * p);

        error = g.norm();


        std::cout << "iter " << iter << " error: " << error << std :: endl;

    }




    std::cout << "error " << error<< std :: endl;
//    std::cout << "grad " << grad_func(init) << std :: endl;
}




#endif //NONLINEAR_CONJUGATE_GRADIENT_CG_H
