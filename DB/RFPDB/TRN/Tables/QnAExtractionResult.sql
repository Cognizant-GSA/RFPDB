CREATE TABLE [TRN].[QnAExtractionResult] (
    [Id]            BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneID]     BIGINT         NOT NULL,
    [UploadID]      BIGINT         NOT NULL,
    [UserQuestion]  NVARCHAR (MAX) NULL,
    [UserAnswer]    NVARCHAR (MAX) NULL,
    [SystemAnswer1] NVARCHAR (200) NULL,
    [SystemAnswer2] NVARCHAR (200) NULL,
    [SystemAnswer3] NVARCHAR (200) NULL,
    [UserRating]    TINYINT        NULL,
    [UserFeedback]  NVARCHAR (MAX) NULL,
    [IsActive]      BIT            NOT NULL,
    [CreatedBy]     BIGINT         NOT NULL,
    [CreatedDate]   DATETIME       NOT NULL,
    [ModifiedBy]    BIGINT         NULL,
    [ModifiedDate]  DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

