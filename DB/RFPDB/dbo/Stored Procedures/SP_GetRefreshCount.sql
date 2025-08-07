CREATE PROC SP_GetRefreshCount  
@WinzoneId bigint  
AS   
BEGIN  
SELECT  ISNULL(RefreshCount, 0) AS RefreshCount, Cost 
FROM TRN.RFPWinzoneOutputFiles w
OUTER APPLY(SELECT SUM(Cost) AS Cost FROM TRN.RFPuploadHistory u
WHERE u.WinzoneID = @WinzoneId
)ru
WHERE w.WinzoneId = @WinzoneId  
END  