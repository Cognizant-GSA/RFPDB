CREATE PROC [dbo].[SP_GetOldDemandsForPrefillData]
@WinzoneId nvarchar(100)  
AS   
BEGIN   
   DECLARE @inputDate DATETIME = '2024-11-06T00:00:00Z'; 

   SELECT COUNT(f.WinzoneId) FROM trn.RFPuploadHistory w
   Inner join TRN.RFPWinzoneOutputFiles f On w.WinzoneId  = f.WinzoneId  
   WHERE ISNULL(ModifiedDate,CreatedDate) < @inputDate
   AND IsActive = 1 AND w.AnalysisStatus = 'Completed'AND f.EBSFlag =NULL AND f.WinzoneID = @WinzoneId
END 



 
