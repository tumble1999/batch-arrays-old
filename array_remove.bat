@echo off

:: call array_remove array "delimeter" position

call %~dp0create_string delimeter %2
set position=%3
set new_array=

set /a limit=!%1_length! - 1

for /l %%g in ( 0, 1, %limit% ) do (

	if %%g neq %position% (
		if %%g equ %limit% (
			set new_array=!new_array!!%1[%%g]!
		) else (
			set new_array=!new_array!!%1[%%g]!!delimeter!
		)
	)
)

if %position% equ %limit% (
	set new_array=!new_array:~0,-1!
)	

call %~dp0create_array %1 "!delimeter!" "!new_array!"