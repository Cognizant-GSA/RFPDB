CREATE TABLE [TRN].[QNCGenAIReponse] (
    [Id]              BIGINT         IDENTITY (1, 1) NOT NULL,
    [QNCGenID]        BIGINT         NOT NULL,
    [WinzoneID]       BIGINT         NOT NULL,
    [QuestionID]      INT            NOT NULL,
    [IsQNCApplicable] BIT            NULL,
    [GENAIresponse]   NVARCHAR (MAX) NULL,
    [Status]          BIT            NULL,
    [Triggeredby]     BIGINT         NOT NULL,
    [IsActive]        BIT            NOT NULL,
    [CreatedBy]       CHAR (25)      NOT NULL,
    [CreatedDate]     DATETIME       NOT NULL,
    [ModifiedBy]      CHAR (25)      NULL,
    [ModifiedDate]    DATETIME       NULL
);

