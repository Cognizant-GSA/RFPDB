 
CREATE   PROC [dbo].[SP_DeleteRFPUploadDetails]          
@DocumentId bigint          
AS          
BEGIN          
DECLARE @UploadId bigint          
DECLARE @WinzoneId bigint          
SELECT @UploadId = Id, @WinzoneId = WinzoneID from TRN.RFPuploadHistory WHERE DocumentId = @DocumentId          
IF @UploadId IS NOT NULL          
BEGIN          
SET NOCOUNT ON        
UPDATE TRN.RFPuploadHistory SET IsActive = 0 WHERE Id = @UploadId          
UPDATE TRN.RFPuploadDocuments SET IsActive = 0 WHERE UploadHistoryId = @UploadId          
UPDATE TRN.RFPDataExtraction SET IsActive = 0 WHERE UploadHistoryId = @UploadId          
UPDATE TRN.RFPslaAnalyzer SET IsActive = 0 WHERE RFPUploadHistoryID = @UploadId          
UPDATE TRN.RFPtimeline SET IsActive = 0 WHERE RFPUploadHistoryID = @UploadId          
UPDATE TRN.RFPslas SET IsActive = 0 WHERE RFPUploadHistoryID = @UploadId          
UPDATE TRN.RFPtoolsRequirement SET IsActive = 0 WHERE RFPUploadHistoryID = @UploadId          
SET NOCOUNT OFF        
END          

IF NOT EXISTS (SELECT ID FROM TRN.RFPuploadHistory WHERE WinzoneID = @WinzoneId AND IsActive = 1 AND AnalysisStatus = 'Completed')      
BEGIN      
SELECT *FROM TRN.RFPWinzoneOutputFiles      
UPDATE TRN.RFPWinzoneOutputFiles       
SET BidSummaryDeckPath = NULL,      
  BidCalendarDeckPath = NULL,      
  RFPSynopsisDocumentPath = NULL,  
  OpenAIDeckPath = NULL,  
  CombinedStatus = NULL  
WHERE WinzoneId = @WinzoneId      
UPDATE TRN.SummarizedOpenAIData   
set CustomerReasons = NULL,   
DetailScope= NULL,  
OutOfScope= NULL,  
ScopeList= NULL,  
IsActive=0  
  WHERE WinzoneId = @WinzoneId   
UPDATE TRN.WinzoneExtractedData   
set WinthemesList = NULL,   
ClientObjectivesList= NULL,  
ClientRequirmentList= NULL,  
PursuitType= NULL,  
OriginatedFromRFI=NULL,  
RFPSubmssionFormat=NULL,  
RFPIssuanceDate=NULL,  
RFPSubmission=NULL,  
DealArcheType=NULL,  
DealArcheSubType=NULL,  
BusinessProcess=NULL,  
Competitors=NULL,  
Incumbent=NULL,  
IsActive=0  
  WHERE WinzoneId = @WinzoneId   
END      
SELECT @WinzoneId    
END       
