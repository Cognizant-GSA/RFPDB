CREATE TABLE [TRN].[UserWinzonePrompts] (
    [Id]                BIGINT         IDENTITY (1, 1) NOT NULL,
    [CategoryId]        INT            NOT NULL,
    [Prompt]            NVARCHAR (MAX) NOT NULL,
    [IsActive]          BIT            NOT NULL,
    [WinzoneId]         BIGINT         NOT NULL,
    [UserId]            BIGINT         NOT NULL,
    [Temperature]       FLOAT (53)     NOT NULL,
    [Presence_Penalty]  FLOAT (53)     NOT NULL,
    [Frequency_Penalty] FLOAT (53)     NOT NULL,
    [Top_P]             FLOAT (53)     NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

