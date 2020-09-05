#include <iostream>
#include "includes/problem.h"

/*
 * Test file
 */
int main() {
    srand(clock());
    int  n;
    std::cout << "enter the problem size: ";
    std::cin >> n;
    mat A = mat :: Random(n,n);
    mat H = 0.5 * (A.transpose() + A);
    vec r (n,1);
    for (int i = 0; i < n ; ++i) {
        r[i] = static_cast<double>(rand()) / (RAND_MAX );
    }
    mat Q = r.asDiagonal();
    H = H.transpose() * Q * H;
    vec c = vec :: Random(n,1);

    objtype obj = [&c, &H] (vec x) -> scalar {return 0.5 * x.dot(H*x) + c.dot(x);};
    gradtype grad = [&c, &H] (vec x) -> vec {return H * x + c;};

    Problem P{obj, grad};

    vec x = vec :: Random(n,1);
    std :: string method = "CG";
    P.solve(method, x);



    std::cout << "done!" << std::endl;
    return 0;
}
