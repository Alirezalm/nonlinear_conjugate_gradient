#include <iostream>
#include "includes/problem.h"

/*
 * Test file
 */
int main() {
    srand(clock());
    using Mat = Eigen::MatrixXd;
    using Vec = Eigen::VectorXd;
    using Scalar = typename Mat::Scalar;

    int  n;
    std::cout << "enter the problem size: ";
    std::cin >> n;
    Vec c = Vec :: Random(n,1);

    std::function<Vec (Vec)>  obj = [c] (Vec x) -> Vec {return 0.5 * x.transpose() * x + c.transpose() * x;};
    std::function<Vec(Vec)>  grad = [c] (Vec x) -> Vec {return x + c;};

    Problem<std::function<Vec (Vec)>, std::function<Vec (Vec)>> P{obj, grad};
    Vec x = Vec :: Random(n,1);
    std :: string method = "CG";
    P.solve(method, x);



    std::cout << "everything is working well"<< std::endl;
    return 0;
}
