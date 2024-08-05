CREATE TABLE [dbo].[MarkLog] (
  [Id] [int] IDENTITY,
  [IdUser] [int] NOT NULL,
  [Date] [datetime] NOT NULL,
  [Comment] [varchar](1024) NOT NULL,
  [IdEntry] [int] NOT NULL,
  [EntryDateOld] [datetime] NULL,
  [EntryDate] [datetime] NULL,
  [IdExit] [int] NULL,
  [ExitDateOld] [datetime] NULL,
  [ExitDate] [datetime] NULL,
  [RestEndDate] [datetime] NULL,
  [IdRestStart] [int] NULL,
  [IdRestEnd] [int] NULL,
  [RestStartDateOld] [datetime] NULL,
  [RestEndDateOld] [datetime] NULL,
  [RestStartDate] [datetime] NULL,
  CONSTRAINT [PK_MarkLog] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[MarkLog]
  ADD CONSTRAINT [FK_MarkLog_MarkEntry] FOREIGN KEY ([IdEntry]) REFERENCES [dbo].[Mark] ([Id])
GO

ALTER TABLE [dbo].[MarkLog]
  ADD CONSTRAINT [FK_MarkLog_MarkExit] FOREIGN KEY ([IdExit]) REFERENCES [dbo].[Mark] ([Id])
GO

ALTER TABLE [dbo].[MarkLog]
  ADD CONSTRAINT [FK_MarkLog_User] FOREIGN KEY ([IdUser]) REFERENCES [dbo].[User] ([Id])
GO