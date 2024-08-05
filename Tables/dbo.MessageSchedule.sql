CREATE TABLE [dbo].[MessageSchedule] (
  [Id] [int] IDENTITY,
  [IdMessage] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [SentDate] [datetime] NULL,
  CONSTRAINT [PK_MessageSchedule] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_Message_PersonOfInterest]
  ON [dbo].[MessageSchedule] ([IdMessage])
  INCLUDE ([IdPersonOfInterest])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[MessageSchedule]
  ADD CONSTRAINT [FK_MessageSchedule_Message] FOREIGN KEY ([IdMessage]) REFERENCES [dbo].[Message] ([Id])
GO

ALTER TABLE [dbo].[MessageSchedule]
  ADD CONSTRAINT [FK_MessageSchedule_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO