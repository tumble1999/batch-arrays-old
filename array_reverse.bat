@echo off

:: call array_reverse array "delimeter"

call %~dp0create_string delimeter %2

set new_array=

set /a limit=!%1_length! - 1

for /l %%g in ( %limit%, -1, 0 ) do (
		
		if %%g equ 0 (
			set new_array=!new_array!!%1[%%g]!
		) else (
			set new_array=!new_array!!%1[%%g]!!delimeter!
		)
)

call %~dp0create_array %1 "!delimeter!" "!new_array!"