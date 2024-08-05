CREATE TABLE [dbo].[Mark] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [Type] [varchar](5) NOT NULL,
  [Date] [datetime] NOT NULL,
  [Latitude] [decimal](25, 20) NOT NULL,
  [Longitude] [decimal](25, 20) NOT NULL,
  [Accuracy] [decimal](8, 1) NOT NULL,
  [ReceivedDate] [datetime] NULL,
  [IdParent] [int] NULL,
  [LatLong] [geography] NULL,
  [IdPointOfInterest] [int] NULL,
  [Edited] [bit] NOT NULL CONSTRAINT [DF_Mark_Edited] DEFAULT (0),
  [Deleted] [bit] NOT NULL CONSTRAINT [DF_Mark_Deleted] DEFAULT (0),
  [TraveledDistance] [decimal](8, 2) NULL,
  [IsOnline] [bit] NULL,
  [IdMarkValidationType] [smallint] NULL,
  CONSTRAINT [PK_Mark] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

CREATE INDEX [IX_Mark_PersonOfInterest]
  ON [dbo].[Mark] ([IdPersonOfInterest], [Type])
  INCLUDE ([Date])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[Mark]
  ADD CONSTRAINT [FK_Mark_Mark] FOREIGN KEY ([IdParent]) REFERENCES [dbo].[Mark] ([Id])
GO

ALTER TABLE [dbo].[Mark] WITH NOCHECK
  ADD CONSTRAINT [FK_Mark_MarkType] FOREIGN KEY ([Type]) REFERENCES [dbo].[MarkType] ([Code])
GO

ALTER TABLE [dbo].[Mark]
  ADD CONSTRAINT [FK_Mark_MarkValidationType] FOREIGN KEY ([IdMarkValidationType]) REFERENCES [dbo].[MarkValidationType] ([Id])
GO

ALTER TABLE [dbo].[Mark]
  ADD CONSTRAINT [FK_Mark_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO

ALTER TABLE [dbo].[Mark]
  ADD CONSTRAINT [FK_Mark_PointOfInterest] FOREIGN KEY ([IdPointOfInterest]) REFERENCES [dbo].[PointOfInterest] ([Id])
GO