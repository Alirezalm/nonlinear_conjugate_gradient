//
// Created by alireza on 04/09/2020.
//

#ifndef NONLINEAR_CONJUGATE_GRADIENT_CG_H
#define NONLINEAR_CONJUGATE_GRADIENT_CG_H

#include "external_libs.h"
#include "line_search.h"
#include "eigen_omp_oprod.h"
#include "results.h"
Results cg(objtype &obj_func, gradtype &grad_func, vec &init);





#endif //NONLINEAR_CONJUGATE_GRADIENT_CG_H
