@echo off

:: call array_index array "find" return postion

call %~dp0create_string find %2
set postion=%4

set %3=-1

if "!postion!" equ "" (
	set posision=0
)

set /a limit=!%1_length! - 1

for /l %%g in ( %posision%, 1, %limit%) do (
	if "!%1[%%g]!" equ "!find!" (
		set %3=%%g
		goto :end
	)
)
:end