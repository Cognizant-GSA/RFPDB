Create PROC [dbo].[SP_GetRFPStatus] 
@WinzoneId Bigint
AS 
BEGIN
select AnalysisStatus from trn.RFPuploadHistory where winzoneId=@WinzoneId and IsActive=1
END



