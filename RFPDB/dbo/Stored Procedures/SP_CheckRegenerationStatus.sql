CREATE PROC SP_CheckRegenerationStatus
@WinzoneId bigint 
AS 
BEGIN   
	SELECT COUNT(Id) FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneID = @WinzoneId AND CombinedStatus = 'Regeneration In Progress'   
END
