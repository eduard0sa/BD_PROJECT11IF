USE msdb;
GO
----------------------------------------------------------------------------------------
EXEC dbo.sp_delete_job
    @job_name = N'POWER_FLUX_REPORT_JOB',
    @delete_unused_schedule = 1,
    @delete_history = 1;

EXEC sp_delete_schedule
    @schedule_id = 1
;
EXEC sp_delete_schedule
    @schedule_id = 17
;
EXEC sp_delete_schedule
    @schedule_id = 18
;
EXEC sp_delete_schedule
    @schedule_id = 19
;
EXEC sp_delete_schedule
    @schedule_id = 20
;

GO
----------------------------------------------------------------------------------------