--==================================================================================================================
--============= USER_QUERIES.sql ===================================================================================
--============= Contem queries para listagem e analise estatistica de dados inerentes ás empresas ==================
--==================================================================================================================

USE [_MORPHEUS_ENGINE_] -- DB CONNECTION
GO

CREATE PROCEDURE GENERATE_AND_SEND_POWER_FLUX_REPORT
AS
BEGIN
    DECLARE @POWER_PLANT_ID INT
    DECLARE @POWER_PLANT_NAME VARCHAR(50)
    DECLARE @POWER_PLANT_COMPANY_ID INT
    DECLARE @POWER_PLANT_TYPE_ID INT
    DECLARE @POWER_PLANT_LOCATION VARCHAR(100)
    DECLARE @POWER_PLANT_MAX_OUTPUT_CAPACITY FLOAT
    DECLARE @POWER_PLANT_STATUS_ID INT
    DECLARE @POWER_PLANT_NEXT_MAINTENANCE_DATE DATE
    DECLARE @POWER_PLANT_INSTALLATION_DATE DATE

    DECLARE @SUBJECT VARCHAR(255)
    DECLARE @BODY NVARCHAR(MAX)
    DECLARE @EMAIL VARCHAR(100)

    DECLARE @POWER_PLANTS_COUNT INT = (SELECT COUNT(POWER_PLANT_ID) FROM POWER_PLANTS (NOLOCK))

    DECLARE _cursor CURSOR FOR(SELECT POWER_PLANT_ID,
        POWER_PLANT_NAME,
        POWER_PLANT_COMPANY_ID,
        POWER_PLANT_TYPE_ID,
        POWER_PLANT_LOCATION,
        POWER_PLANT_MAX_OUTPUT_CAPACITY,
        POWER_PLANT_STATUS_ID,
        POWER_PLANT_NEXT_MAINTENANCE_DATE,
        POWER_PLANT_INSTALLATION_DATE FROM POWER_PLANTS (NOLOCK))

    OPEN _cursor
    FETCH NEXT FROM _cursor INTO @POWER_PLANT_ID,
        @POWER_PLANT_NAME,
        @POWER_PLANT_COMPANY_ID,
        @POWER_PLANT_TYPE_ID,
        @POWER_PLANT_LOCATION,
        @POWER_PLANT_MAX_OUTPUT_CAPACITY,
        @POWER_PLANT_STATUS_ID,
        @POWER_PLANT_NEXT_MAINTENANCE_DATE,
        @POWER_PLANT_INSTALLATION_DATE;

    DECLARE @I INT = 1;
    WHILE @I <= @POWER_PLANTS_COUNT
    BEGIN
        SET @SUBJECT = 'POWER FLUX REPORT'
        SET @EMAIL = (SELECT USER_EMAIL
            FROM USERS (NOLOCK)
            INNER JOIN COMPANIES ON USERS.USER_ID = COMPANIES.COMPANY_CEO_ID
            WHERE COMPANIES.COMPANY_ID = @POWER_PLANT_COMPANY_ID)
        SET @BODY = '<html>
        <body>
        <h1>Power Plant Report</h1>
        <p>Dear Team,</p>
        <p>Here is the report for the power plant:</p>
        <ul>
            <li>Power Plant ID: ' + CAST(@POWER_PLANT_ID AS VARCHAR) + '</li>
            <li>Power Plant Name: ' + @POWER_PLANT_NAME + '</li>
            <li>Company ID: ' + CAST(@POWER_PLANT_COMPANY_ID AS VARCHAR) + '</li>
            <li>Type ID: ' + CAST(@POWER_PLANT_TYPE_ID AS VARCHAR) + '</li>
            <li>Location: ' + @POWER_PLANT_LOCATION + '</li>
            <li>Max Output Capacity: ' + CAST(@POWER_PLANT_MAX_OUTPUT_CAPACITY AS VARCHAR) + '</li>
            <li>Status ID: ' + CAST(@POWER_PLANT_STATUS_ID AS VARCHAR) + '</li>
            <li>Next Maintenance Date: ' + CAST(@POWER_PLANT_NEXT_MAINTENANCE_DATE AS VARCHAR) + '</li>
            <li>Installation Date: ' + CAST(@POWER_PLANT_INSTALLATION_DATE AS VARCHAR) + '</li>
        </ul>
        <p>Best regards,</p>
        <p>Power Flux Team</p>
        </body>
        </html>'

        EXEC msdb.dbo.sp_send_dbmail
            @profile_name = 'Web client 1',
            @recipients = @EMAIL,
            @copy_recipients = '',
            @blind_copy_recipients = '',
            @body_format = 'HTML',
            @body = @BODY,
            @subject = @SUBJECT,
            @from_address = 'eduardoxaviersa@gmail.com',
            @reply_to = '',
            @importance = 'Normal'; 

        FETCH NEXT FROM _cursor INTO @POWER_PLANT_ID,
            @POWER_PLANT_NAME,
            @POWER_PLANT_COMPANY_ID,
            @POWER_PLANT_TYPE_ID,
            @POWER_PLANT_LOCATION,
            @POWER_PLANT_MAX_OUTPUT_CAPACITY,
            @POWER_PLANT_STATUS_ID,
            @POWER_PLANT_NEXT_MAINTENANCE_DATE,
            @POWER_PLANT_INSTALLATION_DATE;

        SET @I = @I + 1;
    END

    CLOSE _cursor
    DEALLOCATE _cursor
END