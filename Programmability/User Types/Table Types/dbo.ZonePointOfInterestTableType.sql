CREATE TYPE [dbo].[ZonePointOfInterestTableType] AS TABLE (
  [PointOfInterestIdentifier] [varchar](50) NOT NULL,
  PRIMARY KEY CLUSTERED ([PointOfInterestIdentifier]) WITH (IGNORE_DUP_KEY = ON)
)
GO