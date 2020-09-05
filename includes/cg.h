//
// Created by alireza on 04/09/2020.
//

#ifndef NONLINEAR_CONJUGATE_GRADIENT_CG_H
#define NONLINEAR_CONJUGATE_GRADIENT_CG_H

#include "external_libs.h"


template<typename ObjFunc, typename GradFunc>
void cg(ObjFunc &obj_func, GradFunc &grad_func, vec &init) {
    auto start = time_measure::high_resolution_clock::now();
    const int n = init.size();
    vec &x = init;
    scalar f = obj_func(x);
    vec g = grad_func(x);
    vec old_g = g;
    vec p = -g;
    scalar error = g.norm();
    scalar eps = 1e-5;
    scalar alpha;
    scalar beta;
    int max_iter = 30000;
    int iter = 0;
//    std::cout << "nonlinear CG is running..." << std::endl;
    while ((error > eps) && iter < max_iter) {
        iter++;
        alpha = 0.01; // wolfe line search has not been implemented.
        x += alpha * p;

        g = grad_func(x);
        beta = (g.dot(g)) / (old_g.dot(old_g));
        old_g = g;

        p = -g + (beta * p);

        error = g.norm();
        f = obj_func(x);

        std::cout << "iter " << iter << " fval: "<< f << " error: " << error << std::endl;

    }
    auto end = time_measure::high_resolution_clock::now();
    auto duration = time_measure::duration_cast<time_measure::milliseconds>(end - start);
    std::cout << "\n\n|-------------------------------------|" << std::endl;
    std::cout << "|nonlinear CG terminated successfully.|" << std::endl;
    std::cout << "|-------------------------------------|" << std::endl;
    std::cout << "          solution information         " << std::endl;
    std::cout << "  -number of iterations:" << iter << "/" << max_iter << std::endl;
    std::cout << "  -optimal value: " << f << std::endl;
    std::cout << "  -optimality error: " << error << std::endl;
    if (duration.count() < 1e3) {
        std::cout << "  -solver time: " << duration.count() << " milliseconds" << std::endl;
    } else {
        std::cout << "  -solver time: " << duration.count() * 1e-3<< " seconds" << std::endl;
    }
}




#endif //NONLINEAR_CONJUGATE_GRADIENT_CG_H
