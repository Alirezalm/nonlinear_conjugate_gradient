//
// Created by alireza on 05/09/2020.
//

#include "../includes/cg.h"

void cg(objtype &obj_func, gradtype &grad_func, vec &init) {

    auto start = time_measure::high_resolution_clock::now(); // start measuring time
    vec &x = init; // vector of initial condition
    scalar f = obj_func(x); //initial objective value
    vec g = grad_func(x);   //initial gradient information
    vec old_g = g;
    vec p = -g; //initial conjugate direction
    scalar error = g.norm();
    scalar eps = 5e-3;
    scalar alpha, alpha_old = 0.01; //step length
    scalar beta;
    const int max_iter = 5000;
    int iter = 0;

    while ((error > eps) && iter < max_iter) {
        iter++;
//        if (error <= 1e-3){
//            alpha = alpha_old;
//        }else{
            alpha = line_search(obj_func,grad_func, x, p, alpha_old);
//            alpha = 0.1;
//        }
        x += alpha * p;

        g = grad_func(x);
        beta = (g.dot(g)) / (old_g.dot(old_g));
        old_g = g;

        p = -g + (beta * p);
        alpha_old = alpha;
        error = g.norm();
        f = obj_func(x);

//        std::cout << "iter " << iter << " fval: " << f << " error: " << error << " alpha: " << alpha << std::endl;

    }
    auto end = time_measure::high_resolution_clock::now();
    auto duration = time_measure::duration_cast<time_measure::milliseconds>(end - start);
    std::cout << "|-------------------------------------|" << std::endl;
    std::cout << "|nonlinear CG terminated successfully.|" << std::endl;
    std::cout << "|-------------------------------------|" << std::endl;
    std::cout << "          solution information         " << std::endl;
    std::cout << "  -number of iterations:" << iter << "/" << max_iter << std::endl;
    std::cout << "  -optimal value: " << f << std::endl;
    std::cout << "  -optimality error: " << error << std::endl;
    if (duration.count() < 1e3) {
        std::cout << "  -solver time: " << duration.count() << " milliseconds" << std::endl;
    } else {
        std::cout << "  -solver time: " << duration.count() * 1e-3 << " seconds" << std::endl;
    }
}
