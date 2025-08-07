CREATE TABLE [TRN].[RFPDataExtraction] (
    [Id]                  BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneId]           BIGINT         NOT NULL,
    [UploadHistoryId]     BIGINT         NOT NULL,
    [FileName]            NVARCHAR (500) NOT NULL,
    [SectionType]         NVARCHAR (20)  NOT NULL,
    [Heading]             NVARCHAR (MAX) NULL,
    [TableHeading]        NVARCHAR (MAX) NULL,
    [Section]             NVARCHAR (MAX) NULL,
    [TableWiseSection]    NVARCHAR (MAX) NULL,
    [WiseSection]         NVARCHAR (MAX) NULL,
    [ClassificationScore] NVARCHAR (MAX) NULL,
    [ClassificationKind]  NVARCHAR (MAX) NULL,
    [IsActive]            BIT            NOT NULL,
    [CreatedBy]           BIGINT         NULL,
    [CreatedDate]         DATETIME       NULL,
    [ModifiedBy]          BIGINT         NULL,
    [ModifiedDate]        DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

