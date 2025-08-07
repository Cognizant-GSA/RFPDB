CREATE PROCEDURE [dbo].[GetActivePromptsWithCategories]
AS
BEGIN
SELECT P.Text AS PromptText, PC.Name AS CategoryName
FROM MAP.Prompts P
INNER JOIN MAS.PromptCategory PC ON P.CategoryID = PC.CategoryID
WHERE P.IsActive = 1 AND PC.IsActive = 1
END;


