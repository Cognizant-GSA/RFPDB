CREATE PROC [dbo].[SP_GetRFPTimelines]
@WinzoneId bigint  
AS  
BEGIN  
SELECT Activity AS Activity,CONVERT(nvarchar(10), DerivedEndDate, 101) AS CompletionDate,Enddate As EndDateDescription, ParamID AS WiseMilestoneId,IsExternal AS IsExternal FROM TRN.RFPtimeline       
WHERE WinzoneID = @WinzoneId AND IsActive = 1   
END 

