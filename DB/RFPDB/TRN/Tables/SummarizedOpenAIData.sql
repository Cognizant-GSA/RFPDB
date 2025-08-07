CREATE TABLE [TRN].[SummarizedOpenAIData] (
    [Id]                  BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneId]           BIGINT         NOT NULL,
    [CustomerReasons]     NVARCHAR (MAX) NULL,
    [DetailScope]         NVARCHAR (MAX) NULL,
    [OutOfScope]          NVARCHAR (MAX) NULL,
    [ScopeList]           NVARCHAR (MAX) NULL,
    [IsActive]            BIT            NOT NULL,
    [CreatedBy]           BIGINT         NOT NULL,
    [CreatedDate]         DATETIME       NOT NULL,
    [ModifiedBy]          BIGINT         NULL,
    [ModifiedDate]        DATETIME       NULL,
    [EligibilityCriteria] NVARCHAR (MAX) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    UNIQUE NONCLUSTERED ([WinzoneId] ASC)
);

