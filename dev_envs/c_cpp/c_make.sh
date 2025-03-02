#!/bin/bash

sudo apt update
sudo apt install -y build-essential gdb git clangd cmake

# Project Configuration
PROJECT_NAME="MinimalCProject"
EXECUTABLE_NAME="minimal_c_app"

# project structure
mkdir -p src build

# Example source file
cat <<EOF > src/main.c
#include <stdio.h>

int main() {
    printf("Minimal C!\n");
    return 0;
}
EOF

# CMakeLists.txt setup
cat <<EOF > CMakeLists.txt
cmake_minimum_required(VERSION 3.10)
project(${PROJECT_NAME})

set(CMAKE_C_STANDARD 11)

add_executable(${EXECUTABLE_NAME} src/main.c)
EOF

# Build the project
cd build && cmake .. && make

echo "Minimal C project '$PROJECT_NAME' setup complete."
echo "Build folder created in './build'."
echo "Executable: './build/$EXECUTABLE_NAME'."
echo "Build with 'cmake --build build' from the project root."
echo "Debug with 'gdb-multiarch build/$EXECUTABLE_NAME'."
