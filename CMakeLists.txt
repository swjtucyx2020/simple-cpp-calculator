cmake_minimum_required(VERSION 3.10)
project(SimpleCalculator)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 修复1：适配 MSVC 的调试选项
if(MSVC)
    add_compile_options(/Z7 /W4 /WX)
    # 强制使用 Debug 运行时库（避免 LNK2038）
    set(CMAKE_MSVC_RUNTIME_LIBRARY "MultiThreadedDebug$<$<CONFIG:Release>:>")
else()
    add_compile_options(-g -Wall -Wextra)
endif()

# 添加主程序
add_executable(calculator 
    src/main.cpp 
    src/calculator.cpp 
    include/calculator.h
)
target_include_directories(calculator PUBLIC include)

# 修复2：正确配置测试（确保 gtest 与主项目配置一致）
enable_testing()
add_executable(test_calculator test/test_calculator.cpp src/calculator.cpp)
target_include_directories(test_calculator PUBLIC include)

# 查找 gtest 并链接
find_package(GTest REQUIRED)
target_link_libraries(test_calculator PRIVATE 
    GTest::GTest 
    GTest::Main
)
add_test(NAME test_calculator COMMAND test_calculator)