CREATE PROC Sp_GetMaskType
@WinzoneId bigint
AS
BEGIN
	SELECT WinzoneId, IsAdvanced AS MaskType FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId
END

