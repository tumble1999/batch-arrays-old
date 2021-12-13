@echo off

set string=%2
set /a takeaway=5

for /f "useback tokens=*" %%a in ('%string%') do (

	if %string% equ %%~a (
		set /a takeaway=3
	)

	set string=%%~a
)

echo %2 > %TEMP%\tempfile.txt

for %%g in (%TEMP%\tempfile.txt) do (
	set /a %1_length=%%~zg - %takeaway%
)
del %TEMP%\tempfile.txt
set %1=%string%