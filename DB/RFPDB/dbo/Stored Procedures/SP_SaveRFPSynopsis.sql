  
CREATE    PROC [dbo].[SP_SaveRFPSynopsis]      
@WinzoneId bigint,        
@UserId bigint,      
@DocumentId bigint      
AS          
BEGIN          
INSERT INTO TRN.RFPuploadHistory(WinzoneID, DocumentId, AnalysisStatus, IsActive, CreatedBy, CreatedDate, DeckStatus, BidPlanStatus, OpenAIDeckStatus)          
VALUES (@WinzoneId, @DocumentId, 'In Progress', 1, @UserId, GETUTCDATE(),'In Progress', 'In Progress', 'In Progress')          
  DECLARE @Id bigint        
SELECT @Id = SCOPE_IDENTITY()          
IF NOT EXISTS (SELECT WinzoneId FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId)        
INSERT INTO TRN.RFPWinzoneOutputFiles(WinzoneId, CombinedStatus) VALUES (@WinzoneId, 'In Progress')        
IF NOT EXISTS (SELECT WinzoneId FROM TRN.SummarizedOpenAIData WHERE WinzoneId = @WinzoneId)        
INSERT INTO TRN.SummarizedOpenAIData(WinzoneId,IsActive, CreatedBy, CreatedDate) VALUES (@WinzoneId,1,@UserId, GETDATE())    
IF NOT EXISTS (SELECT WinzoneId FROM TRN.WinzoneExtractedData WHERE WinzoneId = @WinzoneId)          
INSERT INTO TRN.WinzoneExtractedData(WinzoneId,IsActive,CreatedBy,CreatedDate) VALUES (@WinzoneId,1, @UserId, GETUTCDATE())  
SELECT @Id        
END    
 


