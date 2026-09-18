@echo on

cmake -B build -G Ninja %CMAKE_ARGS% ^
    -DHDR_HISTOGRAM_BUILD_PROGRAMS=OFF ^
    -DHDR_HISTOGRAM_INSTALL_STATIC=OFF ^
    -DHDR_HISTOGRAM_INSTALL_SHARED=ON ^
    -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=ON ^
    .
if errorlevel 1 exit 1

cmake --build build
if errorlevel 1 exit 1

cmake --install build
if errorlevel 1 exit 1
