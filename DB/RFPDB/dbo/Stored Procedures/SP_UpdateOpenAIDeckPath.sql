
 CREATE PROC [dbo].[SP_UpdateOpenAIDeckPath]         
@WinzoneId bigint,      
@FilePath nvarchar(500),  
@UploadId bigint = 0  
AS        
BEGIN        
 UPDATE TRN.RFPWinzoneOutputFiles  SET OpenAIDeckPath= @FilePath      
 WHERE WinzoneId = @WinzoneId      
   
 UPDATE TRN.RFPuploadHistory SET OpenAIDeckStatus = 'Completed' WHERE Id = @UploadId  
END        
