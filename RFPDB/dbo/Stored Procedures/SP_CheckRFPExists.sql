 CREATE PROC [dbo].[SP_CheckRFPExists]      
@WinzoneId bigint      
AS      
BEGIN      
 SELECT COUNT(Id) FROM TRN.RFPuploadHistory WHERE IsActive = 1 AND WinzoneID = @WinzoneId     
END 
