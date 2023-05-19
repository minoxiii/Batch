@echo off 
:func
set /p main=Enter the title for root directory:
if "%main%"=="" (echo The field cannot be empty pause goto func)
md %main%
cd %main%
if not exist "%main%" mkdir "%main%"
cd %main%
:suba
set /p sub_a=Enter the sub-directory title(Click enter to finish program)
if "%sub_a%"==""(goto exit)
md %sub_a%
cd %sub_a%
if not exist "%sub_a%" mkdir "%sub_a%"
cd "%sub_a%"
:file 
set /p file=Enter the file title(Click enter to get back to subdirectory for making other sub-directory):
if "%file%"==""(cd ..goto suba)
echo.>%file%
pause 
set /p x=click enter to get back to sub directory else end with pressing any button:
if "%x%"==""(cd ..goto suba)else(goto exit)
:exit
echo Directory is made 
Pause 
