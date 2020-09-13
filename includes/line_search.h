//
// Created by alireza on 04/09/2020.
//

#ifndef NONLINEAR_CONJUGATE_GRADIENT_LINE_SEARCH_H
#define NONLINEAR_CONJUGATE_GRADIENT_LINE_SEARCH_H
#include "external_libs.h"

scalar line_search(objtype& obj_func, gradtype& grad_func, vec& x, vec& p, scalar a);

scalar zoom(objtype& obj_func, gradtype& grad_func, vec& x, vec& p, scalar alpha_low, scalar alpha_hi);


#endif //NONLINEAR_CONJUGATE_GRADIENT_LINE_SEARCH_H
