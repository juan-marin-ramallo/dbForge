CREATE TABLE [dbo].[PointOfInterestActivity] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [AutomaticValue] [smallint] NOT NULL,
  [DateIn] [datetime] NOT NULL,
  [DateOut] [datetime] NULL,
  [InHourWindow] [bit] NOT NULL,
  [ElapsedTime] [time] NULL,
  [ActionValue] [smallint] NULL,
  [ActionDate] [datetime] NULL,
  [IdPointOfInterestVisited] [int] NULL,
  [IdPointOfInterestManualVisited] [int] NULL,
  CONSTRAINT [PK_PointOfInterestActivity] PRIMARY KEY CLUSTERED ([Id]),
  CONSTRAINT [IX_PointOfInterestActivity] UNIQUE ([Id])
)
ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterestActivity]
  ADD CONSTRAINT [FK_PointOfInterestActivity_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestActivity]
  ADD CONSTRAINT [FK_PointOfInterestActivity_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestActivity]
  ADD CONSTRAINT [FK_PointOfInterestActivity_PointOfInterestManualActivity] FOREIGN KEY ([IdPointOfInterestManualVisited]) REFERENCES [dbo].[PointOfInterestManualVisited] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestActivity]
  ADD CONSTRAINT [FK_PointOfInterestActivity_PointOfInterestVisited] FOREIGN KEY ([IdPointOfInterestVisited]) REFERENCES [dbo].[PointOfInterestVisited] ([Id])
GO