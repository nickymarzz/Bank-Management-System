@echo off
echo ============================================
echo   Starting Bank Management System...
echo ============================================

REM Run the application with all dependencies
java -cp "out;lib\mysql-connector-java-8.0.28.jar;lib\jcalendar-1.4.jar" bank.management.system.Splash
