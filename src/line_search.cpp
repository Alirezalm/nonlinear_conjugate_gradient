//
// Created by alireza on 11/09/2020.
//
#include "../includes/line_search.h"

scalar line_search(objtype &obj_func, gradtype &grad_func, vec &x, vec &p, scalar a) {

    scalar alpha_0 = 1e-5, alpha_max = 5 *a ;
    scalar rho = 0.8;
    scalar alpha = rho * alpha_0 + (1 - rho)* alpha_max;
    scalar alpha_old = alpha_0;
    scalar c1 = 1e-4, c2 = 0.1;
    scalar phi_prime;

    int i = 1, max_iter = 100;
    while (i <= max_iter) {
        if ((obj_func(x + alpha * p) > obj_func(x) + c1 * alpha * grad_func(x).dot(p)) ||
            ((obj_func(x + alpha * p) >= obj_func(x + alpha_old * p)) && (i > 1))) {
            return zoom(obj_func, grad_func, x, p, alpha_old, alpha);
        }
        phi_prime = grad_func(x + alpha * p).dot(p);
        if (fabs(phi_prime) <= -c2 * grad_func(x).dot(p)) {
            return alpha;
        }
        if (phi_prime >= 0) {
            return zoom(obj_func, grad_func, x, p, alpha, alpha_old);
        }
        alpha_old = alpha;
        alpha = rho * alpha_old + (1 - rho)* alpha_max;
        ++i;
    }

}


scalar zoom(objtype &obj_func, gradtype &grad_func, vec &x, vec &p, scalar alpha_low, scalar alpha_hi) {

    scalar c1 = 1e-4, c2 = 0.1;
    scalar phi_prime;
    int max_iter = 20, iter = 0;
    scalar alpha;
    while (iter <= max_iter) {
         alpha = (alpha_low + alpha_hi) / 2;
        if ((obj_func(x + alpha * p) > obj_func(x) + c1 * alpha * grad_func(x).dot(p)) ||
            ((obj_func(x + alpha * p) >= obj_func(x + alpha_low * p)))) {
            alpha_hi = alpha;
        } else {
            phi_prime = grad_func(x + alpha * p).dot(p);
            if (fabs(phi_prime) <= -c2 * grad_func(x).dot(p)) {
                return alpha;
            }
            if (phi_prime * (alpha_hi - alpha_low) >= 0) {
                alpha_hi = alpha_low;
            }
            alpha_low = alpha;

        }
        ++iter;
    }


}