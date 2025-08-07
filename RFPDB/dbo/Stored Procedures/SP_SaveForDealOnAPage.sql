 CREATE PROC [dbo].[SP_SaveForDealOnAPage]        
 @WinzoneId bigint,      
 @UserId bigint   
 AS        
 BEGIN 
 IF NOT EXISTS (SELECT WinzoneId FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId)      
 INSERT INTO TRN.RFPWinzoneOutputFiles(WinzoneId) VALUES (@WinzoneId)      
      
SELECT DealOnAPagePath FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId
 END 
