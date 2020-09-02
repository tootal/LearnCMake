cmake_minimum_required(VERSION 3.18)
project(LearnCMake)

add_library(hello_library STATIC
    src/hello.cpp
)
target_include_directories(hello_library
    PUBLIC
        ${PROJECT_SOURCE_DIR}/include
)

add_executable(${PROJECT_NAME}
    src/main.cpp
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        hello_library
)
