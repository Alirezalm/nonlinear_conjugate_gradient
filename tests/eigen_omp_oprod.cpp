//
// Created by alireza on 12/09/2020.
//
#include "../includes/eigen_omp_oprod.h"

vec mvp(mat &A, vec &x) {

    const int m = A.rows();
    const int n = A.cols();
    vec out(m,1);
#pragma omp parallel
    {
#pragma omp for
        for (int i = 0; i < m; ++i) {

            out(i) = A.row(i).dot(x);
        }

    }
    return out;
}
