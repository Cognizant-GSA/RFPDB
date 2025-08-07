CREATE TABLE [MAP].[Prompts] (
    [PromptID]    INT            IDENTITY (1, 1) NOT NULL,
    [CategoryID]  INT            NULL,
    [Text]        NVARCHAR (MAX) NOT NULL,
    [IsActive]    BIT            NOT NULL,
    [CreatedBy]   BIGINT         NULL,
    [CreatedDate] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([PromptID] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [MAS].[PromptCategory] ([CategoryID])
);

