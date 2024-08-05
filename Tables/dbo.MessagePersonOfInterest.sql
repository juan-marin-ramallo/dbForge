CREATE TABLE [dbo].[MessagePersonOfInterest] (
  [Id] [int] IDENTITY,
  [IdMessage] [int] NOT NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [Received] [bit] NOT NULL,
  [ReceivedDate] [datetime] NULL,
  [Read] [bit] NOT NULL,
  [ReadDate] [datetime] NULL,
  CONSTRAINT [PK_MessageStocker_1] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_MessagePersonOfInterest_IdMessage_IdPersonOfInterest_Received]
  ON [dbo].[MessagePersonOfInterest] ([IdMessage], [IdPersonOfInterest], [Received])
  INCLUDE ([Id])
  ON [PRIMARY]
GO

CREATE INDEX [PK_MessagePersonOfInterest]
  ON [dbo].[MessagePersonOfInterest] ([IdPersonOfInterest])
  INCLUDE ([IdMessage])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[MessagePersonOfInterest]
  ADD CONSTRAINT [FK_MessagePersonOfInterest_Message] FOREIGN KEY ([IdMessage]) REFERENCES [dbo].[Message] ([Id])
GO

ALTER TABLE [dbo].[MessagePersonOfInterest]
  ADD CONSTRAINT [FK_MessagePersonOfInterest_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO