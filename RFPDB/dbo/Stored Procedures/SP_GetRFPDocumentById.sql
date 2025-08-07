CREATE PROC [dbo].[SP_GetRFPDocumentById]
@Id bigint  
AS  
BEGIN  
SELECT u.WinzoneID, u.RFPSynopsisDocumentPath
FROM trn.rfpuploadhistory u  
WHERE u.Id = @Id
END
