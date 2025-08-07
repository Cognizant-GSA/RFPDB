
 

CREATE PROC [dbo].[SP_GetUserPrompts]
@WinzoneId bigint,
@UserId bigint
AS
BEGIN
	SELECT C.Id AS CategoryID, C.Title AS Category, ISNULL(UP.Prompt, C.Query) AS Prompt, c.Subtitle,c.FileName, c.OrderID, c.IsDynamic, c.DynamicParameterType, c.DynamicParameterDB
	,ISNULL(UP.Temperature, c.Temperature) AS Temperature
	,ISNULL(UP.Frequency_Penalty, c.Frequency_Penalty) AS Frequency_Penalty
	,ISNULL(UP.Presence_Penalty, c.Presence_Penalty) AS Presence_Penalty
	,ISNULL(UP.Top_P, c.Top_P) AS Top_P
	, c.k
	,c.MaxTokens
	FROM MAS.PromptQuery C
	LEFT JOIN TRN.UserWinzonePrompts UP ON UP.CategoryId = C.Id AND UP.IsActive = 1 AND UP.WinzoneId = @WinzoneId AND UP.UserId = @UserId
	WHERE C.IsActive = 1 and c.CategoryID=1
END