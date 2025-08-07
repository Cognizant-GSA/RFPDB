CREATE PROC [dbo].[SP_GetActiveRFPUploads]        
@WinzoneId bigint        
AS        
BEGIN        
SELECT COUNT(Id)  FROM trn.rfpuploadhistory       
WHERE IsActive = 1 AND WinzoneID = @WinzoneId       
END

