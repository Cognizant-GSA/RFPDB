CREATE PROC [dbo].[SP_DemandEnhancementGenAI] 
@WinzoneId nvarchar(100)  
AS   
BEGIN    
   SELECT
   w.WinzoneId,
   ClientRequirmentList,    
   IsActive,    
   WinthemesList,    
   ClientObjectivesList,    
   PursuitType,    
   OriginatedFromRFI,    
   RFPSubmssionFormat,    
   RFPIssuanceDate,    
   RFPSubmission,    
   DealArcheType,    
   DealArcheSubType,    
   BusinessProcess,    
   Competitors,    
   Incumbent    
   FROM  trn.WinzoneExtractedData w
   Inner join TRN.RFPWinzoneOutputFiles f On w.WinzoneId  = f.WinzoneId  
   where w.WinzoneId = @WinzoneId  AND f.EBSFlag =1 
END 

