CREATE TABLE [MAS].[PromptCategory] (
    [CategoryID]  INT            IDENTITY (1, 1) NOT NULL,
    [Name]        NVARCHAR (100) NOT NULL,
    [IsActive]    BIT            NOT NULL,
    [CreatedBy]   BIGINT         NULL,
    [CreatedDate] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);

