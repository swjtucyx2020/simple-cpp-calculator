#include <iostream>
#include <string>
#include "../include/calculator.h"

int main() {
    Calculator calc;
    double a, b;
    char op;
    
    std::cout << "Simple Calculator\n";
    std::cout << "Enter operation (+, -, *, /): ";
    std::cin >> op;
    std::cout << "Enter two numbers: ";
    std::cin >> a >> b;
    
    try {
        double result;
        switch(op) {
            case '+':
                result = calc.add(a, b);
                break;
            case '-':
                result = calc.subtract(a, b);
                break;
            case '*':
                result = calc.multiply(a, b);
                break;
            case '/':
                result = calc.divide(a, b);
                break;
            default:
                std::cout << "Invalid operator\n";
                return 1;
        }
        std::cout << "Result: " << result << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
        return 1;
    }
    
    return 0;
}