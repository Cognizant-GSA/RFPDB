CREATE PROC Sp_ResetUserPrompts
@WinzoneId bigint,
@UserId bigint
AS
BEGIN
	UPDATE TRN.UserWinzonePrompts
	SET IsActive = 0
	WHERE WinzoneId = @WinzoneId
	AND UserId = @UserId
END
