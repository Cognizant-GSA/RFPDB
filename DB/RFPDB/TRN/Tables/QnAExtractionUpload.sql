CREATE TABLE [TRN].[QnAExtractionUpload] (
    [Id]            BIGINT        IDENTITY (1, 1) NOT NULL,
    [WinzoneID]     BIGINT        NOT NULL,
    [StartDate]     DATETIME      NULL,
    [CompletedDate] DATETIME      NULL,
    [Status]        NVARCHAR (50) NULL,
    [IsActive]      BIT           NOT NULL,
    [CreatedBy]     BIGINT        NOT NULL,
    [CreatedDate]   DATETIME      NOT NULL,
    [ModifiedBy]    BIGINT        NULL,
    [ModifiedDate]  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

