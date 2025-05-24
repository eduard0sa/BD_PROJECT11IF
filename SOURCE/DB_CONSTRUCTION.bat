@echo off
REM ======================================================================================================================================================
REM ============================= DB_CONSTRUCTION.bat ====================================================================================================
REM ============================= Script que automatiza a cria��o da BD, executando ordenadamente todos os scripts de cria��o. ========================
REM ======================================================================================================================================================

set /p INSTANCE="ENTER SQL SERVER INSTANCE: "
set /p USERNAME="ENTER USERNAME: "
for /f "delims=" %%p in ('powershell -Command "$pword = Read-Host 'ENTER PASSWORD' -AsSecureString; $BSTR = [System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($pword); [System.Runtime.InteropServices.Marshal]::PtrToStringAuto($BSTR)"') do set "password=%%p"

cd SQL/DB_BUILD
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i DATABASE_BUILD_QUERY.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i DATA_INSERTION.sql
cd ..
cd GENERIC_VIEWS
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i USER_VIEWS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i VEHICLE_SPACECRAFT_VIEWS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i POWER_MGMT_VIEWS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i LOGISTICS_MGMT_VIEW.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i CITY_MGMT_VIEWS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i COMPANY_MGMT_VIEWS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i BUILDINGS_MGMT_VIEWS.sql
cd ..
cd FUNCTIONS
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i MATH_FUNCTIONS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i ENERGY_MGMT_FUNCTIONS.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i USER_MGMT_FUNCTIONS.sql
cd..
cd STORED_PROCEDURES
cd DATA_INSERTION_PROCEDURES
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i DATA_INSERTION_PROCEDURES.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i DATA_UPDATE_PROCEDURES.sql
cd ..
cd DATA_QUERY_PROCEDURES
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i USER_QUERY_PROCEDURES.sql
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i COMPANY_QUERY_PROCEDURES.sql
cd ..
cd ..
cd TRIGGERS
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i MAILING_TRIGGERS.sql
cd ..
cd JOBS
sqlcmd -S %INSTANCE% -U %USERNAME% -P %PASSWORD% -i JOBS_CREATION_QUERY.sql
pause