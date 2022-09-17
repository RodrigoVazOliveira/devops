cls
echo Realmente deseja fazer o backup?
pause

cls
echo Ok, fazendo o backup dos arquivos!
cd %USERPROFILE%
mkdir backup
xcopy /E /Y %USERPROFILE%\Dowloads\cmder .\backup
