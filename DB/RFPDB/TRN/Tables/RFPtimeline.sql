CREATE TABLE [TRN].[RFPtimeline] (
    [Id]                 BIGINT         IDENTITY (1, 1) NOT NULL,
    [WinzoneID]          BIGINT         NOT NULL,
    [RFPUploadHistoryID] BIGINT         NOT NULL,
    [Activity]           NVARCHAR (MAX) NULL,
    [Startdate]          NVARCHAR (MAX) NULL,
    [Enddate]            NVARCHAR (MAX) NULL,
    [Comments]           NVARCHAR (MAX) NULL,
    [IsActive]           BIT            NOT NULL,
    [CreatedBy]          BIGINT         NOT NULL,
    [CreatedDate]        DATETIME       NOT NULL,
    [ModifiedBy]         BIGINT         NULL,
    [ModifiedDate]       DATETIME       NULL,
    [MilestoneMapping]   NVARCHAR (MAX) NULL,
    [ParamID]            BIGINT         NULL,
    [DerivedStartDate]   DATETIME       NULL,
    [DerivedEndDate]     DATETIME       NULL,
    [MapType]            NVARCHAR (MAX) NULL,
    [Probability]        NVARCHAR (MAX) NULL,
    [IsExternal]         BIT            NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

