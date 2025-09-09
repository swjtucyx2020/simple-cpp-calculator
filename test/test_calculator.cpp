#include <gtest/gtest.h>
#include "calculator.h"

TEST(CalculatorTest, Add) {
    Calculator calc;
    EXPECT_DOUBLE_EQ(5.0, calc.add(2.0, 3.0));
    EXPECT_DOUBLE_EQ(-1.0, calc.add(2.0, -3.0));
}

TEST(CalculatorTest, Subtract) {
    Calculator calc;
    EXPECT_DOUBLE_EQ(1.0, calc.subtract(4.0, 3.0));
    EXPECT_DOUBLE_EQ(7.0, calc.subtract(4.0, -3.0));
}

TEST(CalculatorTest, Multiply) {
    Calculator calc;
    EXPECT_DOUBLE_EQ(6.0, calc.multiply(2.0, 3.0));
    EXPECT_DOUBLE_EQ(-6.0, calc.multiply(2.0, -3.0));
}

TEST(CalculatorTest, Divide) {
    Calculator calc;
    EXPECT_DOUBLE_EQ(2.0, calc.divide(6.0, 3.0));
    EXPECT_DOUBLE_EQ(-2.0, calc.divide(6.0, -3.0));
    EXPECT_THROW(calc.divide(1.0, 0.0), std::invalid_argument);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}