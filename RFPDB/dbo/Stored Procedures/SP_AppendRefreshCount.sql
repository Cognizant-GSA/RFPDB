CREATE PROC SP_AppendRefreshCount  
@WinzoneId bigint  
AS   
BEGIN  
UPDATE TRN.RFPWinzoneOutputFiles SET RefreshCount = ISNULL(RefreshCount, 0) + 1
,CombinedStatus = 'Regeneration In Progress'
WHERE WinzoneId = @WinzoneId  
END