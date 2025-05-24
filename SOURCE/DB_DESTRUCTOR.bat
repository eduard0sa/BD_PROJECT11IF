@echo off
set /p INSTANCE="ENTER SQL SERVER INSTANCE: "
set /p USERNAME="ENTER USERNAME: "
for /f "delims=" %%p in ('powershell -Command "$pword = Read-Host 'ENTER PASSWORD' -AsSecureString; $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)"') do set "password=%%p"
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i DB_DESTRUCTION_QUERY.sql
cd SQL/JOBS
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i JOBS_DESTRUCTION_QUERY.sql
pause