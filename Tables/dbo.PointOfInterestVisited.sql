CREATE TABLE [dbo].[PointOfInterestVisited] (
  [Id] [int] IDENTITY,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdLocationIn] [int] NOT NULL,
  [LocationInDate] [datetime] NOT NULL,
  [IdLocationOut] [int] NULL,
  [LocationOutDate] [datetime] NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [ElapsedTime] [time] NULL,
  [ClosedByChangeOfDay] [bit] NOT NULL CONSTRAINT [DF_PointOfInterestVisited_ClosedByChangeOfDay] DEFAULT (0),
  [DeletedByNotVisited] [bit] NOT NULL CONSTRAINT [DF_PointOfInterestVisited_DeletedByNotVisited] DEFAULT (0),
  [LatitudeIn] [decimal](25, 20) NULL,
  [LongitudeIn] [decimal](25, 20) NULL,
  [InHourWindow] [bit] NOT NULL CONSTRAINT [DF_PointOfInterestVisited_InHourWindow] DEFAULT (0),
  CONSTRAINT [PK_PointOfInterestVisited] PRIMARY KEY CLUSTERED ([Id])
)
ON [PRIMARY]
GO

CREATE INDEX [IDX_DeletedByNotVisited]
  ON [dbo].[PointOfInterestVisited] ([DeletedByNotVisited])
  INCLUDE ([ElapsedTime], [Id], [IdPersonOfInterest], [IdPointOfInterest], [LocationInDate], [LocationOutDate])
  ON [PRIMARY]
GO

CREATE INDEX [IX_PointOfInterestVisited_IdPersonOfInterest]
  ON [dbo].[PointOfInterestVisited] ([IdPersonOfInterest])
  INCLUDE ([LocationInDate], [LocationOutDate], [IdPointOfInterest], [ElapsedTime], [InHourWindow])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterestVisited_IdPersonOfInterest]
  ON [dbo].[PointOfInterestVisited] ([IdPersonOfInterest])
  INCLUDE ([IdPointOfInterest], [LocationOutDate])
  ON [PRIMARY]
GO

CREATE INDEX [NCL_IX_PointOfInterestVisited_IdPersonOfInterest_2]
  ON [dbo].[PointOfInterestVisited] ([IdPersonOfInterest])
  INCLUDE ([IdPointOfInterest], [LocationInDate])
  ON [PRIMARY]
GO

ALTER TABLE [dbo].[PointOfInterestVisited] WITH NOCHECK
  ADD CONSTRAINT [FK_PointOfInterestVisited_Location_In] FOREIGN KEY ([IdLocationIn]) REFERENCES [dbo].[Location] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestVisited] WITH NOCHECK
  ADD CONSTRAINT [FK_PointOfInterestVisited_Location_Out] FOREIGN KEY ([IdLocationOut]) REFERENCES [dbo].[Location] ([Id])
GO

ALTER TABLE [dbo].[PointOfInterestVisited]
  ADD CONSTRAINT [FK_PointOfInterestVisited_PersonOfInterest] FOREIGN KEY ([IdPersonOfInterest]) REFERENCES [dbo].[PersonOfInterest] ([Id])
GO