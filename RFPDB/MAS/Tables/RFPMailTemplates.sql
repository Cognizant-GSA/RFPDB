CREATE TABLE [MAS].[RFPMailTemplates] (
    [ID]           INT            IDENTITY (1, 1) NOT NULL,
    [TemplateName] NVARCHAR (50)  NULL,
    [Subject]      NVARCHAR (MAX) NULL,
    [Body]         NVARCHAR (MAX) NULL
);

