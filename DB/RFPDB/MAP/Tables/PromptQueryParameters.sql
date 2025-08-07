CREATE TABLE [MAP].[PromptQueryParameters] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [PromptQueryID]   INT            NULL,
    [PromptParameter] NVARCHAR (100) NOT NULL,
    [IsActive]        BIT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([PromptQueryID]) REFERENCES [MAS].[PromptQuery] ([Id])
);

