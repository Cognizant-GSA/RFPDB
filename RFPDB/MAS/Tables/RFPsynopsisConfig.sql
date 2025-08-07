CREATE TABLE [MAS].[RFPsynopsisConfig] (
    [Id]                    BIGINT         IDENTITY (1, 1) NOT NULL,
    [Section]               NVARCHAR (500) NULL,
    [SubSection]            NVARCHAR (500) NULL,
    [Order]                 INT            NULL,
    [SummarizationRequired] BIT            NOT NULL,
    [Criticality]           NVARCHAR (500) NULL,
    [Threshold]             INT            NULL,
    [LoadInTable]           BIT            NULL,
    [IsActive]              BIT            NOT NULL,
    [CreatedBy]             BIGINT         NOT NULL,
    [CreatedDate]           DATETIME       NOT NULL,
    [ModifiedBy]            BIGINT         NULL,
    [ModifiedDate]          DATETIME       NULL,
    [ZeroshotLabel]         BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

