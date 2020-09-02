@echo off
if not exist build (
    mkdir build
)
cmake -B build -S . >> build\build.log
cmake --build build >> build\build.log
.\build\Debug\LearnCMake.exe