CREATE PROC [dbo].[SP_UpdateBidFilePath]       
@WinzoneId bigint,    
@FilePath nvarchar(500),
@UploadId bigint = 0
AS      
BEGIN      
 UPDATE TRN.RFPWinzoneOutputFiles  SET BidSummaryDeckPath= @FilePath    
 WHERE WinzoneId = @WinzoneId    
 
 UPDATE TRN.RFPuploadHistory SET DeckStatus = 'Completed' WHERE Id = @UploadId
END      
