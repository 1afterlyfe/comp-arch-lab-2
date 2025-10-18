#include <iostream>
#include "calculator.h"

int main() {
    std::cout << "3 + 4 = " << add(3, 4) << "\n";
    std::cout << "10 - 5 = " << sub(10, 5) << "\n";
    std::cout << "6 * 7 = " << mul(6, 7) << "\n";
    std::cout << "20 / 4 = " << div_safe(20, 4) << "\n";
    return 0;
}
