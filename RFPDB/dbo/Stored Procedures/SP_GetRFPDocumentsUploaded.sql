
Create Procedure [dbo].[SP_GetRFPDocumentsUploaded]  
@WinZoneID bigint  
AS  
BEGIN  
 select * from trn.RFPuploadHistory  
 where WinzoneID = @WinZoneID and IsActive=1  
END