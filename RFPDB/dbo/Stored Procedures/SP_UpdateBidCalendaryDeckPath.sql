CREATE PROC [dbo].[SP_UpdateBidCalendaryDeckPath]         
@WinzoneId bigint,      
@FilePath nvarchar(500),
@UploadId bigint = 0    
AS        
BEGIN        
 UPDATE TRN.RFPWinzoneOutputFiles  SET BidCalendarDeckPath= @FilePath      
 WHERE WinzoneId = @WinzoneId 
 
 UPDATE TRN.RFPuploadHistory SET BidPlanStatus = 'Completed' WHERE Id = @UploadId
END    
