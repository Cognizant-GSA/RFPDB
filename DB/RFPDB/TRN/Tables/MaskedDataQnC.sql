CREATE TABLE [TRN].[MaskedDataQnC] (
    [ID]                 INT            IDENTITY (1, 1) NOT NULL,
    [WinzoneID]          BIGINT         NOT NULL,
    [TextData]           NVARCHAR (MAX) NULL,
    [TextLabel]          NVARCHAR (MAX) NULL,
    [LabelName]          NVARCHAR (MAX) NULL,
    [IsActive]           BIT            NOT NULL,
    [QnAUploadHistoryID] INT            NULL
);

