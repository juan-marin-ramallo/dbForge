CREATE TYPE [dbo].[PointOfInterestVisitedTableType] AS TABLE (
  [Id] [int] NULL,
  [IdPersonOfInterest] [int] NOT NULL,
  [IdLocationIn] [int] NOT NULL,
  [LocationInDate] [datetime] NOT NULL,
  [IdLocationOut] [int] NULL,
  [LocationOutDate] [datetime] NULL,
  [IdPointOfInterest] [int] NOT NULL,
  [ElapsedTime] [time] NULL,
  [DeletedByNotVisited] [bit] NOT NULL,
  [LatitudeIn] [decimal](25, 20) NULL,
  [LongitudeIn] [decimal](25, 20) NULL
)
GO