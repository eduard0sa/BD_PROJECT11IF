USE msdb;
GO
----------------------------------------------------------------------------------------
EXEC dbo.sp_delete_job
    @job_name = N'POWER_FLUX_REPORT_JOB',
    @delete_unused_schedule = 1,
    @delete_history = 1;

GO
----------------------------------------------------------------------------------------