cmake_minimum_required(VERSION 3.10)
project(CalculatorProject)

set(CMAKE_CXX_STANDARD 17)
include_directories(include)

# Створення бібліотеки
add_library(calc STATIC src/calculator.cpp)

# Створення виконуваного файлу
add_executable(calculator_app src/main.cpp)

# Лінкування бібліотеки
target_link_libraries(calculator_app calc)
