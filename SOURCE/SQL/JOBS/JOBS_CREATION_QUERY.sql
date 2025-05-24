USE msdb;
GO
----------------------------------------------------------------------------------------
EXEC dbo.sp_add_job @job_name = N'POWER_FLUX_REPORT_JOB' ;
GO
EXEC sp_add_jobstep
    @job_name = N'POWER_FLUX_REPORT_JOB',
    @step_name = N'STEP_1',
    @subsystem = N'TSQL',
    @command = N'USE _MORPHEUS_ENGINE_; EXEC GENERATE_AND_SEND_POWER_FLUX_REPORT',
    @retry_attempts = 5,
    @retry_interval = 5 ;
GO
EXEC dbo.sp_add_schedule
    @schedule_name = N'RunOnce',
    @freq_type = 1,
    @active_start_time = 175500;
GO
EXEC sp_attach_schedule
    @job_name = N'POWER_FLUX_REPORT_JOB',
    @schedule_name = N'RunOnce';
GO
EXEC dbo.sp_add_jobserver @job_name = N'POWER_FLUX_REPORT_JOB';
GO
----------------------------------------------------------------------------------------