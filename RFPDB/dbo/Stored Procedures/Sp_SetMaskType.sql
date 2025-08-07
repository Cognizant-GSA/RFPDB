CREATE PROC Sp_SetMaskType
@WinzoneId bigint,
@MaskType bit
AS
BEGIN
	IF EXISTS (SELECT WinzoneId FROM TRN.RFPWinzoneOutputFiles WHERE WinzoneId = @WinzoneId)
	BEGIN
	UPDATE TRN.RFPWinzoneOutputFiles
	SET IsAdvanced = @MaskType
	WHERE WinzoneId = @WinzoneId
	END
	ELSE
	BEGIN
		INSERT INTO TRN.RFPWinzoneOutputFiles(WinzoneId, IsAdvanced) VALUES
		(@WinzoneId, @MaskType)
	END
END

