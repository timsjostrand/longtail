@echo off
cmake --version >/nul 2>&1 || (
	echo Missing CMake. Install with: `winget install cmake`
	pause
	exit
)
set OUT=".cmake"
cmake -B "%OUT%" -DBATLIKE=TRUE && (
	cmake --build "%OUT%" --config Debug
	cmake --build "%OUT%" --config RelWithDebInfo
)
pause