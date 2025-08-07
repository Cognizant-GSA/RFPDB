CREATE TABLE [TRN].[BidParameters] (
    [Id]                  BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneId]           BIGINT         NOT NULL,
    [HistoryWithClient]   NVARCHAR (500) NULL,
    [EligibilityCriteria] NVARCHAR (500) NULL,
    [RelevantExperience]  NVARCHAR (500) NULL,
    [ImmediateAttention]  NVARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

