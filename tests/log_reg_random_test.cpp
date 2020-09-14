#include <iostream>
#include "../includes/problem.h"

/*
 * Test file
 */
int main() {
    srand(clock());
//    omp_set_num_threads(4);

//    Eigen::setNbThreads(8);
    int m = 10000, n = 50;
//    std::cout << "Enter the dataset size: (m x n) ";
//    std::cin >> m >> n;
    mat X = mat::Random(m, n);
    vec theta = vec::Random(n, 1);
    vec y = vec::Random(m, 1);

    for (int i = 0; i < m; ++i) {
        if (y[i] <= 0) {
            y[i] = 0.0;
        } else {
            y[i] = 1.0;
        }
    }
    objtype f = [&X, &y, &m](vec theta) -> scalar {
        scalar sum = 0;
        scalar h, z;
        for (int i = 0; i < m; ++i) {
            z = X.row(i).dot(theta);
            h = 1 / (1 + exp(-z));
            if (h == 1) { h = 1 - 1e-8; }
            if (h == 0) { h = 1e-8; }
            sum += -y[i] * log(h) - (1 - y[i]) * log(1 - h);
        }
        return sum;
    };

    gradtype grad = [&X, &y, &m](vec theta) -> vec {
        scalar z;
        vec h = vec::Zero(m, 1);
        for (int i = 0; i < m; ++i) {
            z = X.row(i).dot(theta);
            h[i] = 1 / (1 + exp(-z));
        }
        return X.transpose() * (h - y);
    };

    Problem P{f, grad};
    std::string method = "CG";


    Results res = P.solve(method, theta);


    std::cout << res.obj_value<< std::endl;
    return 0;
}
