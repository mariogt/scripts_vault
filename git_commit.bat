REM ******************** Created by Mario Gajardo Tassara ******************** 

@echo off

echo ------------------------
echo GIT PUSH !!
echo ------------------------
git status
git add .
echo ------------------------
echo Write the commit comment
echo ------------------------
set input=
set /p input=Comment:
git commit -m %input%
git push
