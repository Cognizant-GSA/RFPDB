CREATE TABLE [TRN].[RFPslaAnalyzer] (
    [Id]                 BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneID]          BIGINT         NOT NULL,
    [RFPUploadHistoryID] BIGINT         NOT NULL,
    [SLAName]            NVARCHAR (MAX) NULL,
    [SLAType]            NVARCHAR (MAX) NULL,
    [UOM]                NVARCHAR (MAX) NULL,
    [MeasurementWindow]  NVARCHAR (MAX) NULL,
    [Frequency]          NVARCHAR (MAX) NULL,
    [Goal]               NVARCHAR (MAX) NULL,
    [Adherence]          NVARCHAR (MAX) NULL,
    [Priority]           NVARCHAR (MAX) NULL,
    [Metric]             NVARCHAR (MAX) NULL,
    [IsActive]           BIT            NOT NULL,
    [CreatedBy]          BIGINT         NOT NULL,
    [CreatedDate]        DATETIME       NOT NULL,
    [ModifiedBy]         BIGINT         NULL,
    [ModifiedDate]       DATETIME       NULL
);

