@echo off

:: call array_append array "delimiter" "to_append"

call %~dp0create_string delimiter %2
call %~dp0create_string add %3

set temporary=!%1_length!
set %1[!temporary!]=!add!

set /a %1_length=!temporary! + 
set %1=!%1!!delimiter!!add!

