CREATE TABLE [MAP].[PursuitQnA] (
    [Id]           BIGINT   IDENTITY (1, 1) NOT NULL,
    [QuestionId]   BIGINT   NULL,
    [AnswerId]     BIGINT   NULL,
    [Preference]   INT      NULL,
    [IsActive]     BIT      NOT NULL,
    [CreatedBy]    BIGINT   NOT NULL,
    [CreatedDate]  DATETIME NOT NULL,
    [ModifiedBy]   BIGINT   NULL,
    [ModifiedDate] DATETIME NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([AnswerId]) REFERENCES [MAS].[PursuitAnswer] ([Id]),
    FOREIGN KEY ([AnswerId]) REFERENCES [MAS].[PursuitAnswer] ([Id]),
    FOREIGN KEY ([QuestionId]) REFERENCES [MAS].[PursuitQuestion] ([Id]),
    FOREIGN KEY ([QuestionId]) REFERENCES [MAS].[PursuitQuestion] ([Id])
);

