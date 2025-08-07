CREATE   PROC [dbo].[SP_InsertWinzoneInOutputFiles]       
 @WinzoneId bigint         
 AS              
 BEGIN                         
 IF NOT EXISTS (SELECT WinzoneId FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId)            
 INSERT INTO TRN.RFPWinzoneOutputFiles(WinzoneId) VALUES (@WinzoneId)                     
 END
 
