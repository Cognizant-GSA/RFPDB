create PROC SP_GetSummarizedOpenAIData
@WinzoneId bigint
AS
BEGIN
	SELECT CustomerReasons, DetailScope, OutOfScope, ScopeList
	FROM TRN.SummarizedOpenAIData WHERE IsActive = 1 AND WinzoneId = @WinzoneId
END
