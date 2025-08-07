CREATE TABLE [MAS].[PursuitQuestion] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [Category]        NVARCHAR (100) NULL,
    [Question]        NVARCHAR (MAX) NULL,
    [DocumentLink]    NVARCHAR (MAX) NULL,
    [CreatedOn]       DATETIME       NULL,
    [DocumentOwner]   NVARCHAR (100) NULL,
    [IsActive]        BIT            NOT NULL,
    [CreatedBy]       BIGINT         NOT NULL,
    [CreatedDate]     DATETIME       NOT NULL,
    [ModifiedBy]      BIGINT         NULL,
    [ModifiedDate]    DATETIME       NULL,
    [EmbeddingStatus] BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

