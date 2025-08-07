CREATE PROC [dbo].[SP_CheckIfAnyInProgress]
@WinzoneId bigint
AS
BEGIN
	SELECT COUNT(Id) FROM TRN.RFPuploadHistory WHERE WinzoneID = @WinzoneId AND IsActive = 1 AND AnalysisStatus = 'In Progress'
END
