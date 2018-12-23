REM # A batch file to...
REM # Run Jupyter notebook  on the current folder 
setlocal
cd /d %~dp0
REM # If you need special Anaconda environment
call activate py3
REM # It is important to add the 'call' 
call jupyter notebook
REM # The pause command is to keep the command window active.
pause