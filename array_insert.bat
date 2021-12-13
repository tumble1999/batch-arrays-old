@echo off

:: call array_insert array "delimeter" "value" position

call %~dp0create_string delimeter %2
call %~dp0create_string value %3
set position=%4
set new_array=

set /a limit=!%1_length! - 1

for /l %%g in ( 0, 1, %limit% ) do (
	
	if %%g equ %position% (
		set new_array=!new_array!!value!!delimeter!
	)
	if %%g equ %limit% (
		set new_array=!new_array!!%1[%%g]!
	) else (
		set new_array=!new_array!!%1[%%g]!!delimeter!
	)
	
)

call %~dp0create_array %1 "!delimeter!" "!new_array!"