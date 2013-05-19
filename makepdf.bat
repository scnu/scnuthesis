@echo off
if "%1"=="" goto :NO_ARGS
if "%1"=="clean" goto :CLEAN_ME
goto :ERROR

:NO_ARGS
call :makefile
goto :EOF
:CLEAN_ME
call :CleanFolder
goto :EOF
:ERROR
call :helpme
goto :EOF


:CleanFolder
del *.aux *.lo? *.toc *.ind *.inx *.gls *.glo *.ist *.idx *.ilg *.out *.bak *.bbl *.brf *.blg *.dvi *.ps data\*.aux
goto :EOF

:makefile
call :CleanFolder
xelatex thesis.tex  rem generate .toc file
xelatex thesis.tex rem generate pdf file
goto :EOF

:helpme
echo Wrong parameter, the usage is:
echo "make" - to make the pdf file
echo "make clean" - to clean the work directory
goto :EOF
