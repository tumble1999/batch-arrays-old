@echo off

:: call array_replace array "delimeter" "value" position

:: call array_insert array "delimeter" "value" position
:: call array_remove array "delimeter" position

set position=%4

call %~dp0array_insert %1 %2 %3 %position%
set /a position=%position% + 1
::call %~dp0array_remove %1 %2 %position%