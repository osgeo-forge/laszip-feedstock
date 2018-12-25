mkdir builddir
cd builddir

cmake -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% ^
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% ^
    -G "NMake Makefiles" ^
    -DCMAKE_BUILD_TYPE=Release ^
    -DBUILD_STATIC:BOOL=FALSE ^
    ..
if %errorlevel% neq 0 exit /b %errorlevel%

cmake --build .
if %errorlevel% neq 0 exit /b %errorlevel%

cmake --build . --target install
if %errorlevel% neq 0 exit /b %errorlevel%
