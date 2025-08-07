CREATE TABLE [TRN].[RFPuploadDocuments] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [UploadHistoryId] BIGINT         NOT NULL,
    [DocumentName]    NVARCHAR (500) NOT NULL,
    [DocumentType]    NVARCHAR (20)  NOT NULL,
    [IsActive]        BIT            NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

