CREATE TABLE [dbo].[PointOfInterestMark] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [CheckInDate] [datetime] NOT NULL,
  [InReceivedDate] [datetime] NOT NULL,
  [Edited] [bit] NULL,
  [CheckOutDate] [datetime] NULL,
  [OutReceivedDate] [datetime] NULL,
  [ElapsedTime] [time] NULL,
  [DeletedByNotVisited] [bit] NULL,
  [Completition] [bit] NULL,
  CONSTRAINT [PK_PointOfInterestMark] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IX_DeletedByNotVisited_PointOfInterestMark]
  ON [dbo].[PointOfInterestMark] ([DeletedByNotVisited])
  INCLUDE ([Id], [IdPersonOfInterest], [IdPointOfInterest], [CheckInDate], [CheckOutDate], [ElapsedTime])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterestMark]
  ADD CONSTRAINT [FK_PointOfInterestMark_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestMark]
  ADD CONSTRAINT [FK_PointOfInterestMark_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO