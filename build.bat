@echo off
echo ============================================
echo   Building Bank Management System...
echo ============================================

REM Create output directory
if not exist "out" mkdir out

REM Compile all Java files with dependencies on classpath
javac -d out -cp "lib\mysql-connector-java-8.0.28.jar;lib\jcalendar-1.4.jar" -sourcepath src src\bank\management\system\*.java

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [ERROR] Build failed!
    pause
    exit /b 1
)

REM Copy resource files (icons) to output
xcopy /E /I /Y "src\icons" "out\icons" >nul 2>&1

echo.
echo [SUCCESS] Build completed successfully!
echo Output: out\
pause
