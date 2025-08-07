CREATE TABLE [TRN].[RFPslas] (
    [Id]                    BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneID]             BIGINT         NOT NULL,
    [RFPUploadHistoryID]    BIGINT         NOT NULL,
    [SLAName]               NVARCHAR (MAX) NULL,
    [Priority]              NVARCHAR (MAX) NULL,
    [SLA]                   NVARCHAR (MAX) NULL,
    [SLACompliance]         NVARCHAR (MAX) NULL,
    [OperationalDefinition] NVARCHAR (MAX) NULL,
    [Period]                NVARCHAR (MAX) NULL,
    [Remarks]               NVARCHAR (MAX) NULL,
    [IsActive]              BIT            NOT NULL,
    [CreatedBy]             BIGINT         NOT NULL,
    [CreatedDate]           DATETIME       NOT NULL,
    [ModifiedBy]            BIGINT         NULL,
    [ModifiedDate]          DATETIME       NULL,
    [Metric]                VARCHAR (MAX)  NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

