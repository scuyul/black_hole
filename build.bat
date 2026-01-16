@echo off
REM ========================================================
REM BlackHole Build and Run Script
REM ========================================================

REM --- Change this to your Visual Studio installation path ---
SET VS_PATH="C:\Program Files\Microsoft Visual Studio\2022\Community"

REM --- Path to the VS Developer Command Prompt tools ---
CALL "%VS_PATH%\VC\Auxiliary\Build\vcvars64.bat"

REM --- Go to the project root ---
cd /d "C:\Users\Scuyul\Documents\GitHub\black_hole"

REM --- Configure CMake build (creates build folder if not exists) ---
cmake -B build -S . -DCMAKE_TOOLCHAIN_FILE=C:/vcpkg/scripts/buildsystems/vcpkg.cmake

REM --- Build the project ---
cmake --build build --config Debug

REM --- Move into the Debug folder and run the exe ---
cd build\Debug
BlackHole3D.exe

pause
