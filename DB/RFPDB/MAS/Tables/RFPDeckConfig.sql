CREATE TABLE [MAS].[RFPDeckConfig] (
    [Id]                  BIGINT         IDENTITY (1, 1) NOT NULL,
    [OrderID]             INT            NULL,
    [TemplateName]        NVARCHAR (MAX) NULL,
    [SlideName]           NVARCHAR (MAX) NULL,
    [slideIsDynamic]      BIT            NULL,
    [Remarks]             NVARCHAR (MAX) NULL,
    [IsActive]            BIT            NULL,
    [Createdby]           BIGINT         NULL,
    [CreatedDate]         DATETIME       NULL,
    [ModifiedBy]          BIGINT         NULL,
    [ModifiedDate]        DATETIME       NULL,
    [FunctionType]        NVARCHAR (MAX) NULL,
    [SectionName]         NVARCHAR (MAX) NULL,
    [SummaryFieldName]    NVARCHAR (MAX) NULL,
    [SubsummaryFieldName] NVARCHAR (500) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

