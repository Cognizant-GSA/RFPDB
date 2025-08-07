CREATE TABLE [MAS].[RFPsynopsisAlias] (
    [Id]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [SectionId]    BIGINT         NOT NULL,
    [AliasName]    NVARCHAR (500) NOT NULL,
    [IsActive]     BIT            NOT NULL,
    [CreatedBy]    BIGINT         NOT NULL,
    [CreatedDate]  DATETIME       NOT NULL,
    [ModifiedBy]   BIGINT         NULL,
    [ModifiedDate] DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

