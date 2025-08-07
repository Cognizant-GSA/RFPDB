    
CREATE PROC [dbo].[SP_GetBidRFPFilePath]       
@WinzoneId bigint      
AS      
BEGIN      
 SELECT       
 BidSummaryDeckPath, RFPSynopsisDocumentPath, BidCalendarDeckPath, CombinedStatus ,OpenAIDeckPath,DealOnAPagePath      
 FROM TRN.RFPWinzoneOutputFiles      
 WHERE WinzoneId = @WinzoneId      
END 