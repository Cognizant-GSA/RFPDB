
 CREATE PROC SP_GetProcessIds
 @DocumentId bigint
 AS
 BEGIN
	SELECT ProcessID, APIProcessId FROM TRN.RFPuploadHistory WHERE DocumentId = @DocumentId
 END

