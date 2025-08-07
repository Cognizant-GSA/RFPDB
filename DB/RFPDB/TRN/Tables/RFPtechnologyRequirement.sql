CREATE TABLE [TRN].[RFPtechnologyRequirement] (
    [Id]                 BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneID]          BIGINT         NOT NULL,
    [RFPUploadHistoryID] BIGINT         NOT NULL,
    [Technology_ID]      NVARCHAR (MAX) NULL,
    [Technology_Name]    NVARCHAR (MAX) NULL,
    [IsActive]           BIT            NOT NULL,
    [CreatedBy]          BIGINT         NOT NULL,
    [CreatedDate]        DATETIME       NOT NULL,
    [ModifiedBy]         BIGINT         NULL,
    [ModifiedDate]       DATETIME       NULL
);

