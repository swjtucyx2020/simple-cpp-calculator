# CMake generated Testfile for 
# Source directory: E:/github/simple-cpp-calculator
# Build directory: E:/github/simple-cpp-calculator/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
if(CTEST_CONFIGURATION_TYPE MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
  add_test(test_calculator "E:/github/simple-cpp-calculator/build/Debug/test_calculator.exe")
  set_tests_properties(test_calculator PROPERTIES  _BACKTRACE_TRIPLES "E:/github/simple-cpp-calculator/CMakeLists.txt;36;add_test;E:/github/simple-cpp-calculator/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
  add_test(test_calculator "E:/github/simple-cpp-calculator/build/Release/test_calculator.exe")
  set_tests_properties(test_calculator PROPERTIES  _BACKTRACE_TRIPLES "E:/github/simple-cpp-calculator/CMakeLists.txt;36;add_test;E:/github/simple-cpp-calculator/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
  add_test(test_calculator "E:/github/simple-cpp-calculator/build/MinSizeRel/test_calculator.exe")
  set_tests_properties(test_calculator PROPERTIES  _BACKTRACE_TRIPLES "E:/github/simple-cpp-calculator/CMakeLists.txt;36;add_test;E:/github/simple-cpp-calculator/CMakeLists.txt;0;")
elseif(CTEST_CONFIGURATION_TYPE MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
  add_test(test_calculator "E:/github/simple-cpp-calculator/build/RelWithDebInfo/test_calculator.exe")
  set_tests_properties(test_calculator PROPERTIES  _BACKTRACE_TRIPLES "E:/github/simple-cpp-calculator/CMakeLists.txt;36;add_test;E:/github/simple-cpp-calculator/CMakeLists.txt;0;")
else()
  add_test(test_calculator NOT_AVAILABLE)
endif()
