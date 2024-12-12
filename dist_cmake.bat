@echo off
cmake --version >/nul 2>&1 || (
	echo Missing CMake. Install with: `winget install cmake`
	pause
	exit
)
set OUT=".cmake"
cmake --install "%OUT%" --prefix "dist\dist-win32-x64" --config Debug
REM cmake --install "%OUT%" --prefix "dist\dist-win32-x64" --config Release
cmake --install "%OUT%" --prefix "dist\dist-win32-x64" --config RelWithDebInfo
pause