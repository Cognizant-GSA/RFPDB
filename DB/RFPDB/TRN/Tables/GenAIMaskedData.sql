CREATE TABLE [TRN].[GenAIMaskedData] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [WinzoneID]    BIGINT         NOT NULL,
    [TextData]     NVARCHAR (MAX) NULL,
    [TextLabel]    NVARCHAR (MAX) NULL,
    [LabelName]    NVARCHAR (MAX) NULL,
    [IsActive]     BIT            NOT NULL,
    [uploadID]     INT            NULL,
    [CreatedDate]  DATETIME       NOT NULL,
    [Createdby]    BIGINT         NOT NULL,
    [ModifiedDate] DATETIME       NULL,
    [ModifiedBy]   BIGINT         NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

