cmake_minimum_required(VERSION 3.10)
project(SimpleCalculator)

# 设置C++标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 添加可执行文件
add_executable(calculator 
    src/main.cpp 
    src/calculator.cpp 
    include/calculator.h
)

# 包含头文件目录
target_include_directories(calculator PUBLIC include)

# 启用测试
enable_testing()

# 添加测试可执行文件
add_executable(test_calculator test/test_calculator.cpp src/calculator.cpp)
target_include_directories(test_calculator PUBLIC include)
add_test(NAME test_calculator COMMAND test_calculator)