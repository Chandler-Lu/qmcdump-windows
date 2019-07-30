@echo off

rem Programs and batch should be placed in the same directory. If there is a space in your folder path, use double quotation marks.

setlocal enabledelayedexpansion

rem Work Path
set WORK_PATH=
set /P WORK_PATH=Please input folder path: 

rem Decode Core
SET QMC_FILE=%~dp0\qmcdump.exe

for /R %WORK_PATH% %%f in (*.qmc*) do (
	SET TARGET_FILE=%%f
	"%QMC_FILE%" "!TARGET_FILE!"
)