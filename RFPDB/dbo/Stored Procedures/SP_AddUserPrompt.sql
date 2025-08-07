CREATE PROC SP_AddUserPrompt
	@CategoryId int, 
	@Prompt nvarchar(max),
	@WinzoneId bigint,
	@UserId bigint,
	@Temperature float,
	@Presence_Penalty float,
	@Frequency_Penalty float,
	@Top_P float
	AS
	BEGIN
	UPDATE TRN.UserWinzonePrompts SET IsActive = 0 WHERE WinzoneId = @WinzoneId AND UserId = @UserId AND CategoryId = @CategoryId

 

	INSERT INTO TRN.UserWinzonePrompts(CategoryId, Prompt, IsActive, WinzoneId, UserId, Temperature, Frequency_Penalty, Presence_Penalty, Top_P)
	VALUES (@CategoryId, @Prompt, 1, @WinzoneId,@UserId, @Temperature, @Frequency_Penalty, @Presence_Penalty, @Top_P)
	END

 

