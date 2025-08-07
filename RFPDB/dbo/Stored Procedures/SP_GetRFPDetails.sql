CREATE PROC [dbo].[SP_GetRFPDetails]    
@WinzoneId bigint    
AS    
BEGIN    
SELECT u.Id, d.DocumentName, AnalysisStatus AS RFPStatus, AnalysisStartTime AS StartDate, AnalysisEndtime AS EndDate, DeckExceptionComments AS DeckComments,    
ExceptionComments AS RFPComments, DeckStatus, RFPSynopsisDocumentPath, BidPlanStatus, OpenAIDeckStatus    
FROM trn.rfpuploadhistory u    
INNER JOIN trn.RFPuploadDocuments d on d.UploadHistoryId = u.Id    
WHERE u.IsActive = 1 AND WinzoneID = @WinzoneId    
END